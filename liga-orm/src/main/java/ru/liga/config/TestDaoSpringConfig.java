package ru.liga.config;

import org.postgresql.ds.PGSimpleDataSource;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.jdbc.core.JdbcTemplate;
import ru.liga.dao.springjdbc.mapper.DepartmentDao;


@Configuration
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

    @Bean
    public DepartmentDao departmentDao() {
        return new DepartmentDao(jdbcTemplate());
    }

    @Bean
    public JdbcTemplate jdbcTemplate() {
        String url = "jdbc:postgresql://localhost:5432/postgres";
        PGSimpleDataSource dataSource = new PGSimpleDataSource();
        dataSource.setUrl(url);
        dataSource.setUser(user);
        dataSource.setPassword(password);
        dataSource.setCurrentSchema(schema);
        return new JdbcTemplate(dataSource);
    }
}
