package org.servlet;

import com.google.api.services.drive.model.File;
import org.backend.DriveQuickstart;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "HelloServlet", urlPatterns = {"/hello"}, loadOnStartup = 1)
public class HelloServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.getWriter().print("Hello, World!");
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        DriveQuickstart driveQuickstart = new DriveQuickstart();
        if (request.getParameter("button3") != null) {
            try {
                DriveQuickstart.main();
                request.getRequestDispatcher("response.jsp").forward(request, response);
            } catch (GeneralSecurityException e) {
                e.printStackTrace();
            }
        }

        if (request.getParameter("button4") != null) {
            try {
                TimeUnit.SECONDS.sleep(3);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            try {
                DriveQuickstart.uploadFile();
                request.getRequestDispatcher("Sucess2.jsp").forward(request, response);

            } catch (GeneralSecurityException e) {
                e.printStackTrace();
            }
        }


        if (request.getParameter("button5") != null) {
            try {
                DriveQuickstart.main();
                List<File> driveFiles=DriveQuickstart.getFileList();
                request.setAttribute("file1name", driveFiles.get(0).getName());
                request.setAttribute("file1Id", driveFiles.get(0).getId());
                request.setAttribute("file1Type", driveFiles.get(0).getMimeType());

                request.setAttribute("file2Id", driveFiles.get(1).getId());
                request.setAttribute("file2name", driveFiles.get(1).getName());

                request.setAttribute("file3Id", driveFiles.get(2).getId());
                request.setAttribute("file3name", driveFiles.get(2).getName());

                request.setAttribute("file4Id", driveFiles.get(3).getId());
                request.setAttribute("file4name", driveFiles.get(3).getName());

                request.setAttribute("file5Id", driveFiles.get(4).getId());
                request.setAttribute("file5name", driveFiles.get(4).getName());

                request.setAttribute("file6name", driveFiles.get(5).getName());
                request.setAttribute("file7name", driveFiles.get(6).getName());
                request.setAttribute("file8name", driveFiles.get(7).getName());
                request.setAttribute("file9name", driveFiles.get(8).getName());
                request.setAttribute("file10name",driveFiles.get(9).getName());
                request.getRequestDispatcher("viewDownloadFiles.jsp").forward(request, response);
            } catch (GeneralSecurityException e) {
                e.printStackTrace();
            }
        }

        if (request.getParameter("button1") != null) {
            String file1ID = request.getParameter("file1ID");
            String file1Name= request.getParameter("file1Name");
            driveQuickstart.downloadFile(file1ID,file1Name);
            request.getRequestDispatcher("Sucess.jsp").forward(request, response);
        }
        if (request.getParameter("button2") != null) {
            String file2ID = request.getParameter("file2ID");
            String file2Name= request.getParameter("file2Name");
            driveQuickstart.downloadFile(file2ID,file2Name);
            request.getRequestDispatcher("Sucess.jsp").forward(request, response);
        }
        if (request.getParameter("button10") != null) {
            String file3ID = request.getParameter("file3ID");
            String file3Name= request.getParameter("file3Name");
            driveQuickstart.downloadFile(file3ID,file3Name);
            request.getRequestDispatcher("Sucess.jsp").forward(request, response);
        }
        if (request.getParameter("button11") != null) {
            String file4ID = request.getParameter("file4ID");
            String file4Name= request.getParameter("file4Name");
            driveQuickstart.downloadFile(file4ID,file4Name);
            request.getRequestDispatcher("Sucess.jsp").forward(request, response);
        }
        if (request.getParameter("button12") != null) {
            String file5ID = request.getParameter("file5ID");
            String file5Name= request.getParameter("file5Name");
            driveQuickstart.downloadFile(file5ID,file5Name);
            request.getRequestDispatcher("Sucess.jsp").forward(request, response);
        }
    }
}