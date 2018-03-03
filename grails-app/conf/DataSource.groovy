dataSource {
	pooled = true
	driverClassName = "com.mysql.jdbc.Driver"
	dialect = "org.hibernate.dialect.MySQL5InnoDBDialect"
}
hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = true
//    cache.region.factory_class = 'net.sf.ehcache.hibernate.EhCacheRegionFactory' // Hibernate 3
    cache.region.factory_class = 'org.hibernate.cache.ehcache.EhCacheRegionFactory' // Hibernate 4
    singleSession = true // configure OSIV singleSession mode
}

// environment specific settings
environments {
    development {
        dataSource {
			url = "jdbc:mysql://localhost/tomcat"
			driverClassName = "com.mysql.jdbc.Driver"
			username = ""
			password = ""
			properties {
				maxActive = 100
				maxIdle = 25
				minIdle = 5
				initialSize = 10
				minEvictableIdleTimeMillis = 60000
				timeBetweenEvictionRunsMillis = 60000
				maxWait = 10000
			}
        }
    }
    test {
        dataSource {
			url = "jdbc:mysql://localhost/tomcat"
			driverClassName = "com.mysql.jdbc.Driver"
			username = ""
			password = ""
			properties {
				maxActive = 100
				maxIdle = 25
				minIdle = 5
				initialSize = 10
				minEvictableIdleTimeMillis = 60000
				timeBetweenEvictionRunsMillis = 60000
				maxWait = 10000
			}
        }
    }
    production {
        dataSource {
			url = "jdbc:mysql://localhost/tomcat"
			driverClassName = "com.mysql.jdbc.Driver"
			username = ""
			password = ""
            properties {
				maxActive = -1
				minEvictableIdleTimeMillis=1800000
				timeBetweenEvictionRunsMillis=1800000
				numTestsPerEvictionRun=3
				testOnBorrow=true
				testWhileIdle=true
				testOnReturn=false
				validationQuery="SELECT 1"
				jdbcInterceptors="ConnectionState"
            }
        }
    }
}
