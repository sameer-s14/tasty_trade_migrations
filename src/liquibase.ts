import {
  LiquibaseConfig,
  Liquibase,
  POSTGRESQL_DEFAULT_CONFIG,
  LiquibaseLogLevels,
} from "liquibase";
import { config } from "dotenv";

config();
class LiquibaseClass {
  private myConfig: LiquibaseConfig = {
    ...POSTGRESQL_DEFAULT_CONFIG,
    changeLogFile: "liquibaseDbChangelog.xml",
    url: `jdbc:postgresql://${process.env.DB_HOST}:${process.env.DB_PORT}/${process.env.DB_NAME}?reconnect=true`,
    username: process.env.DB_USER!,
    password: process.env.DB_PASSWORD!,
    logLevel: LiquibaseLogLevels.Off,
  };

  async init() {
    const instance = new Liquibase(this.myConfig);
    let params = {
      labels: "Changes from Server",
      contexts: "1",
    };

    try {
      const status = await instance.status();
      console.log(`Liquibase status : `, status);
    } catch (error) {
      console.log("Liquibase status fail",(error as Error)?.message);
    }

    try {
      const update = await instance.update(params);
      console.log(`Liquibase update : `, update);
    } catch (error) {
      console.log("Liquibase update fail",error);
    }

    try {
      const status = await instance.status();
      console.log(`Liquibase status : `, status);
    } catch (error) {
      console.log("Liquibase status fail");
    }
  }
}

export const LiquibaseInstance = new LiquibaseClass();
