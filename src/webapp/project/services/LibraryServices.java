package webapp.project.services;

import java.util.List;
import webapp.project.model.LibraryModel;

public interface LibraryServices {

    public void AddBooks(LibraryModel librarymodel);
    public void UpdateBooks(LibraryModel librarymodel);
    public void DeleteBook(int id);
    public List<LibraryModel> GetLibrary();
    
    }