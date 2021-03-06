<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Terms</title>
    <link rel="stylesheet" href="/Jboard2/css/style.css"/>    
</head>
<body>
    <div id="wrapper">
        <section id="user" class="terms">
            <table>
                <caption>Terms of Service</caption>
                <tr>
                    <td>
                        <textarea readonly>${requestScope.vo.getTerms()}</textarea>
                        <p>
                            <label><input type="checkbox" name="chk1"/> I agree.</label>
                        </p>
                    </td>
                </tr>
            </table>
            <table>
                <caption>Privacy Policy</caption>
                <tr>
                    <td>
                        <textarea readonly>${vo.privacy}</textarea>
                        <p>
                            <label><input type="checkbox" name="chk2"/> I agree.</label>
                        </p>
                    </td>
                </tr>
            </table>
            <div>
                <a href="/Jboard2/user/login.do">Cancel</a>
                <a href="/Jboard2/user/register.do">Next</a>
            </div>
        </section>
    </div>
    
</body>
</html>