package com.zgkaii.spring02;

import com.zgkaii.aop.ISchool;
import com.zgkaii.spring01.Student;
import lombok.Data;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.context.properties.ConfigurationProperties;

@Data
@ConfigurationProperties(prefix = "school")
public class School implements ISchool {
    @Autowired
    Klass class1;

    @Autowired
    Student student;

    @Override
    public void ding() {
        System.out.println("Class1 have " + this.class1.getStudents().size()
                + " students and one is " + this.student);
    }
}
