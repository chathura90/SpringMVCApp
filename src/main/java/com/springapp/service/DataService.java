package com.springapp.service;

import com.springapp.entity.Employee;

import java.util.List;

/**
 * Created by chathura on 6/5/15.
 */
public interface DataService {
    public int insertRow(Employee employee);
    public List<Employee>getList();
    public Employee getRowById(int id);
    public int updateRow(Employee employee);
    public int deleteRow(int id);
}
