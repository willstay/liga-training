package ru.liga.config;


import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import ru.liga.dao.DepartmentDao;
import ru.liga.dao.EmployeeDao;
import ru.liga.dao.StudentDao;

import javax.sql.DataSource;


@Configuration
@ComponentScan("ru.liga.*")
@PropertySource("classpath:application.properties")
public class TestDaoSpringConfig {

    @Value("${database.url}")
    private String url;
    @Value("${database.driver}")
    private String driver;
    @Value("${database.user}")
    private String user;
    @Value("${database.password}")
    private String password;
    @Value("${database.schema}")
    private String schema;

    /**
     * @return источник данных postgres
     */
    @Bean("dataSource")
    public DataSource dataSource() {
        DriverManagerDataSource dataSource = new DriverManagerDataSource();
        dataSource.setDriverClassName(driver);
        dataSource.setUrl(url);
        dataSource.setUsername(user);
        dataSource.setPassword(password);
        return dataSource;
    }

    @Bean
    public DepartmentDao departmentDao() {
        return new DepartmentDao(new JdbcTemplate(dataSource()));
    }

    @Bean
    public StudentDao studentDao() {
        return new StudentDao(new JdbcTemplate(dataSource()));
    }

    @Bean
    public EmployeeDao employeeDao() {
        return new EmployeeDao((new JdbcTemplate(dataSource())));
    }
}
