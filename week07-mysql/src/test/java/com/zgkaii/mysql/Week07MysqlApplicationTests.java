package com.zgkaii.mysql;

import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class Week07MysqlApplicationTests {

    @Test
    void testInsert() {
        InsertData insertData = new InsertData();
//        insertData.insert1();
//        insertData.insert2();
        insertData.insert3();
    }
}
