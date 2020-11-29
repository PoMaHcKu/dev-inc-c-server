#include <iostream>
#include <string>
#include <stdio.h>
#include <stdlib.h>
#include <cgicc/CgiDefs.h>
#include <cgicc/Cgicc.h>
#include <cgicc/HTTPHTMLHeader.h>
#include <cgicc/HTMLClasses.h>
using namespace std;
using namespace cgicc;
void set_content_type(string content_type) {
  cout << "Content-type: " << content_type << "\r\n\r\n";
}
void set_page_title(string title) {
  cout << "<title>" << title << "</title>\n";
}
void h1_text(string text) {
  cout << text << "\n";
}
int main() {
  Cgicc cgi;
  string name;
  set_content_type("text/html");
  cout << "<!doctype html>\n";
  cout << "<html lang=\"en\">\n";
  cout << "<head>\n";
  set_page_title("cgicc Test");
  cout << "</head>\n";
  cout << "<body>\n";
  cout << "<p>";

  name = cgi("name");

  if (!name.empty()) {
    cout << "Name is " << name << "\n";
  } else {
    cout << "Name was not provided.";
  }
  cout << "</p>\n";
  cout << "</body>\n";
  cout << "</html>";
  return 0;
}