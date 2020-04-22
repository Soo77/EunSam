package com.soo.lim.config;

import javax.sql.DataSource;
import org.apache.ibatis.logging.LogFactory;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.ApplicationContext;

@MapperScan("com.soo.lim.dao")
public class MybatisConfig {

  public SqlSessionFactory sqlSessionFactory(
      DataSource dataSource, ApplicationContext appCtx) throws Exception {
        
    
    LogFactory.useLog4J2Logging();
    
    SqlSessionFactoryBean sqlSessionFactoryBean = new SqlSessionFactoryBean();
    sqlSessionFactoryBean.setDataSource(dataSource);
    sqlSessionFactoryBean.setTypeAliasesPackage("com.soo.lim.domain");
    sqlSessionFactoryBean.setMapperLocations(
        appCtx.getResources("classpath:com/soo/lim/mapper/*Mapper.xml"));
    return null;
        
    
    
  }
}
