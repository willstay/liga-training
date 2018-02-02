package ru.liga.config;

import org.postgresql.ds.PGSimpleDataSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.jdbc.core.JdbcTemplate;
import ru.liga.dao.DepartmentDao;



@Configuration
@PropertySource("classpath:application.properties")
public class TestDaoSpringConfig {


    @Bean
    public DepartmentDao departmentDao() {
        return new DepartmentDao(jdbcTemplate());
    }

    @Bean
    public JdbcTemplate jdbcTemplate() {
        String url = "jdbc:postgresql://localhost:5432/postgres";
        PGSimpleDataSource dataSource = new PGSimpleDataSource();
        dataSource.setUrl(url);
        dataSource.setUser("postgres");
        dataSource.setPassword("q");
        dataSource.setCurrentSchema("liga");
        return new JdbcTemplate(dataSource);
    }
}
