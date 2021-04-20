package com.zgkaii.spring02;

import com.zgkaii.spring01.Student;
import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

import java.util.List;

@Data
@Component
@ConfigurationProperties(prefix = "klass")
public class Klass {

    List<Student> students;

    public void dong() {
        System.out.println("--------Klass--------");
        System.out.println(this.getStudents());
    }
}
