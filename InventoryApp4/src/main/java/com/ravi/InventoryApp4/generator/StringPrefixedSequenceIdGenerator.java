package com.ravi.InventoryApp4.generator;

import java.io.Serializable;
import java.util.Properties;

import org.hibernate.HibernateException;
import org.hibernate.MappingException;
import org.hibernate.engine.spi.SharedSessionContractImplementor;
import org.hibernate.id.enhanced.SequenceStyleGenerator;
import org.hibernate.internal.util.config.ConfigurationHelper;
import org.hibernate.service.ServiceRegistry;
import org.hibernate.type.LongType;
import org.hibernate.type.Type;

import com.ravi.InventoryApp4.model.CountableItems;

public class StringPrefixedSequenceIdGenerator extends SequenceStyleGenerator
{
	/*public static final String VALUE_PREFIX_PARAMETER = "valuePrefix";
	public static final String VALUE_PREFIX_DEFAULT = "";
	private String valuePrefix;
	
	public static final String NUMBER_FORMAT_PARAMETER = "numberFormat";
	public static final String NUMBER_FORMAT_DEFAULT = "%d";
	private String numberFormat;*/
	
	public static final String CODE_NUMBER_SEPARATOR_PARAMETER = "codeNumberSeperator";
	public static final String CODE_NUMBER_SEPERATOR_DEFAULT = "_";
	
	public static final String NUMBER_FORMAT_PARAMETER = "numberFormat";
	public static final String NUMBER_FORMAT_DEFAULT = "%05d";
	
	private String format;
	
	
	@Override
	public Serializable generate(SharedSessionContractImplementor session, Object object) throws HibernateException {
		
		return String.format(format, ((CountableItems)object).getItemId(), super.generate(session, object));
	}


	@Override
	public void configure(Type type, Properties params, ServiceRegistry serviceRegistry) throws MappingException {
		
		super.configure(LongType.INSTANCE, params, serviceRegistry);
		String codeNumberSeperator = ConfigurationHelper.getString(CODE_NUMBER_SEPARATOR_PARAMETER,params, CODE_NUMBER_SEPERATOR_DEFAULT);
		String numberFormat = ConfigurationHelper.getString(NUMBER_FORMAT_PARAMETER,params, NUMBER_FORMAT_DEFAULT);
		this.format = "%1s"+codeNumberSeperator+numberFormat;
	}
	
	
	
	

}
