package dao.impl;

import java.util.List;

import model.Friendpair;
import model.Message;
import model.User;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import dao.MessageDao;

public class MessageDaoImpl extends HibernateDaoSupport implements MessageDao{
	
	public Integer save(Message message){
		return (Integer) getHibernateTemplate().save(message);
	}

	public void delete(Message message){
		getHibernateTemplate().delete(message);		
	}
	
	public List<Message> getMessageBySender(String sender){
		@SuppressWarnings("unchecked")
		List<Message> messages = (List<Message>) getHibernateTemplate().find(
				"from Message as m where m.sender=?", sender);
		return messages;
	}

	public Message getMessageByMessageid(int messageid) {
		@SuppressWarnings("unchecked")
		List<Message> messages = (List<Message>) getHibernateTemplate().find(
				"from Message as m where m.messageid=?", messageid);
		Message message = messages.size() > 0 ? messages.get(0) : null;
		return message;
	}


	@Override
	public List<Message> getMessageByBoth(String sender, String accepter) {
		@SuppressWarnings("unchecked")
		List<Message> messages = (List<Message>) getHibernateTemplate().find(
				"from Message as m where m.sender=? and m.accepter=?",
				sender, accepter);
		return messages;
	}
}
