package com.springapp.service;

import com.springapp.dao.DataDao;
import com.springapp.entity.Employee;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;

import java.io.Serializable;
import java.util.List;

/**
 * Created by chathura on 6/5/15.
 */
public class DataServiceImpl implements DataService {

    @Autowired
    DataDao dataDao;

    @Override
    public int insertRow(Employee employee) {
        return dataDao.insertRow(employee);
    }

    @Override
    public List<Employee> getList() {
        return dataDao.getList();
    }

    @Override
    public Employee getRowById(int id) {
        return dataDao.getRowById(id);
    }

    @Override
    public int updateRow(Employee employee) {
        return dataDao.updateRow(employee);
    }

    @Override
    public int deleteRow(int id) {
        return dataDao.deleteRow(id);
    }

}
