package com.zgkaii.spring;

import com.zgkaii.spring.demo.spring02.Klass;
import org.junit.Assert;
import org.junit.jupiter.api.Test;

import static org.mockito.Mockito.*;

public class Spring02Test {
    
    private Klass class1;
    
    @Test
    public void KlassTest(){
        class1 = mock(Klass.class, RETURNS_DEEP_STUBS);
        when(class1.getStudents().size()).thenReturn(2);
        Assert.assertEquals(2, class1.getStudents().size());
    }
    
    // 单元测试
}
