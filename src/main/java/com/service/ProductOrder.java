package com.service;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import com.model.AddProduct;
//import com.model.ProductPojo;


@Component
public class ProductOrder {
	private JdbcTemplate jdbcTemp;

	public ProductOrder(DataSource dataSource) {
		jdbcTemp = new JdbcTemplate(dataSource);
	}

	public List<AddProduct> prodList() {
		List<AddProduct> list = jdbcTemp.query("SELECT * FROM product", new RowMapper<AddProduct>() {

			@Override
			public AddProduct mapRow(ResultSet rs, int rowNum) throws SQLException {
				AddProduct po = new AddProduct();
				po.setItemId(rs.getString("item_Id"));
				po.setItemName(rs.getString("item_Name"));
				po.setItemType(rs.getString("item_Type"));
				po.setItemPrice(rs.getInt("item_Price"));
				po.setItemDesc(rs.getString("item_Desc"));

				return po;
			}

		});

		return list;
	}
	
	public AddProduct getProductById(String id) {
		List<Map<String, Object>> list = jdbcTemp.queryForList("SELECT * FROM product where item_Id ='"+id+"'" );
		
		AddProduct ap=new AddProduct();
		int i = 0;
		//System.out.println(list);
		ap.setItemId((String)list.get(i).get("item_Id"));
		ap.setItemName((String)list.get(i).get("item_Name"));
		ap.setItemType((String)list.get(i).get("item_Type"));
		System.out.println(list.get(i).get("item_Price"));
		ap.setItemPrice(Integer.parseInt((String) list.get(i).get("item_Price")));
		ap.setItemDesc((String)list.get(i).get("item_Desc"));
		
		return ap;
		
	
	}

	
	
	
	
	
	/*@Autowired
    private SessionFactory sessionFactory;
 
   // @Override
    public Product findProduct(String ItemId) {
        Session session = sessionFactory.getCurrentSession();
        Criteria crit = session.createCriteria(Product.class);
        crit.add(Restrictions.eq("ItemId", ItemId));
        return (Product) crit.uniqueResult();
    }*/
/*	private SessionFactory sessionFactory;
	@SuppressWarnings("deprecation")
	public Product findProduct(String ItemId) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		 Criteria crit = session.createCriteria(Product.class);
		 crit.add(Restrictions.eq("ItemId", ItemId));
		 return (Product) crit.uniqueResult();
	}*/
}
