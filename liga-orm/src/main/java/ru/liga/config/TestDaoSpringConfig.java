package ru.liga.config;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.io.ClassPathResource;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import ru.liga.dao.springjdbc.mapper.DepartmentDao;

import javax.sql.DataSource;


@Configuration
@MapperScan({"ru.liga.dao.mybatis"})
@PropertySource("classpath:application.properties")
public class TestDaoSpringConfig {

    @Value("${database.url}")
    private String url;
    @Value("${database.user}")
    private String user;
    @Value("${database.password}")
    private String password;
    @Value("${database.schema}")
    private String schema;


//
//    /**
//     * @return источник данных
//     */
//    @Bean("dataSource")
//    public DataSource dataSource() {
//        PGSimpleDataSource dataSource = new PGSimpleDataSource();
//        dataSource.setUrl(url);
//        dataSource.setUser(user);
//        dataSource.setPassword(password);
//        dataSource.setCurrentSchema(schema);
//        return dataSource;
//    }
    /**
     * @return источник данных
     */
    @Bean("dataSource")
    public DataSource dataSource() {
        DriverManagerDataSource dataSource = new DriverManagerDataSource();
        dataSource.setDriverClassName("org.postgresql.Driver");
        dataSource.setUrl(url);
        dataSource.setUsername(user);
        dataSource.setPassword(password);
        return dataSource;
    }

    @Bean
    public DepartmentDao departmentDao() {
        return new DepartmentDao(new JdbcTemplate(dataSource()));
    }

    /**
     * @return менеджер транзакций
     */
    @Bean
    public DataSourceTransactionManager transactionManager() {
        return new DataSourceTransactionManager(dataSource());
    }

    /**
     * @return фабрика сессий Mybatis
     * @throws Exception
     */
    @Bean
    public SqlSessionFactory sqlSessionFactory() throws Exception {
        SqlSessionFactoryBean sessionFactory = new SqlSessionFactoryBean();
        sessionFactory.setDataSource(dataSource());
        sessionFactory.setConfigLocation(new ClassPathResource("config/mybatisConfig.xml"));
        return sessionFactory.getObject();
    }

}
