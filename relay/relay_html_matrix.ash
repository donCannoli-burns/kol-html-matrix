// KoL HTML Matrix launcher.
// KoLmafia's relay menu discovers top-level relay_*.ash / relay_*.js files.
// The actual single-file UI stays namespaced under relay/html-matrix/.

void main() {
    string target = "/html-matrix/index.html";

    write("<!doctype html><html><head><meta charset='utf-8'>");
    write("<meta http-equiv='refresh' content='0; url=" + target + "'>");
    write("<title>KoL HTML Matrix</title></head><body>");
    write("<p>Opening <a href='" + target + "'>KoL HTML Matrix</a>...</p>");
    write("</body></html>");
}
