package ru.ssau.labs.sql;

import java.sql.Connection;
import java.sql.SQLException;

public interface SQLTransaction<T> {
    T execute(Connection connection) throws SQLException;
}
