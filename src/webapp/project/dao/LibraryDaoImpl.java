package webapp.project.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import webapp.project.model.LibraryModel;

@Repository
public class LibraryDaoImpl implements LibraryDao {

    /* created by INDRAJIT MAURIYA 06-06-2016*/
    
    @Autowired
    private SessionFactory sessionFactory;
    private Session getCurrentSession() 
    {
        return sessionFactory.getCurrentSession();
    }
    
    @Override
    public void AddBooks(LibraryModel librarymodel) {
        getCurrentSession().save(librarymodel);
    }
    
    @Override
    public void UpdateBooks(LibraryModel librarymodel) {
        getCurrentSession().update(librarymodel);
        
    }
    
    @Override
    public void DeleteBook(int id) {
        
        LibraryModel model=new LibraryModel();
        model.setId(id);
        getCurrentSession().delete(model);
    }
    
    @Override
    public List<LibraryModel> GetLibrary() 
    {
        @SuppressWarnings("unchecked")
        List<LibraryModel> lib = (List<LibraryModel>) getCurrentSession().createCriteria(LibraryModel.class).list();
        return lib;
    }

    }