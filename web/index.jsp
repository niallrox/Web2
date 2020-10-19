<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Лаба №2</title>
    <link rel="stylesheet" href="CSS/style.css">
    <link rel="stylesheet" href="CSS/animation.css">
    <link rel="stylesheet" href="CSS/button.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.0/animate.min.css"/>
    <link rel="icon"
          href="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTsYQH5Pw5o_8mjWD3TZfm-uPPJwn5r3y6hBg&usqp=CAU%22/%3E">
</head>
<body>
<script src="JS/jquery-3.4.1.js"></script>
<header class="cap animate__animated animate__fadeInDown">
    Леднев Иван, Рыбальченко Максим P3231 Вариант 2730
</header>
<div class="content">
    <div class="svg">
        <svg width="300" height="300" class="svg-graph">
            <line class="axis" x1="0" x2="300" y1="150" y2="150" stroke="black"></line>
            <line x1="150" x2="150" y1="0" y2="300" stroke="black"></line>
            <polygon points="150,0 144,15 156,15" stroke="black"></polygon>
            <polygon points="300,150 285,156 285,144" stroke="black"></polygon>

            <line x1="200" x2="200" y1="155" y2="145" stroke="black"></line>
            <line x1="250" x2="250" y1="155" y2="145" stroke="black"></line>

            <line x1="50" x2="50" y1="155" y2="145" stroke="black"></line>
            <line x1="100" x2="100" y1="155" y2="145" stroke="black"></line>

            <line x1="145" x2="155" y1="100" y2="100" stroke="black"></line>
            <line x1="145" x2="155" y1="50" y2="50" stroke="black"></line>

            <line x1="145" x2="155" y1="200" y2="200" stroke="black"></line>
            <line x1="145" x2="155" y1="250" y2="250" stroke="black"></line>

            <text x="195" y="140">R/2</text>
            <text x="248" y="140">R</text>

            <text x="40" y="140">-R</text>
            <text x="90" y="140">-R/2</text>

            <text x="160" y="105">R/2</text>
            <text x="160" y="55">R</text>

            <text x="160" y="205">-R/2</text>
            <text x="160" y="255">-R</text>

            <polygon points="150,150 250,150 250,200 150,200"
                     fill="white" fill-opacity="0.3" stroke="white"></polygon>

            <path d="M 150 100 A 50 50 90 0 0 100 150 L 150 150 Z"
                  fill="white" fill-opacity="0.3" stroke="white"></path>

            <polygon points="150,100 250,150 150,150"
                     fill="white" fill-opacity="0.3" stroke="white"></polygon>

            <circle r="3" cx="150" cy="150" id="point" fill="black"></circle>
        </svg>
    </div>
    <form class="input-form" id="form">
        <div class="buttons-form">
            <div class="buttons">
                <strong>X VALUE:</strong>

                <div class="x-buttons_line">
                    <p>
                    <div class="x-button"><span>-2</span>
                        <svg>
                            <circle class="o1" r="22" cx="25" cy="25"></circle>
                        </svg>
                    </div>
                    <p>
                    <div class="x-button"><span>-1.5</span>
                        <svg>
                            <circle class="o1" r="22" cx="25" cy="25"></circle>
                        </svg>
                    </div>
                    <p>
                    <div class="x-button"><span>-1</span>
                        <svg>
                            <circle class="o1" r="22" cx="25" cy="25"></circle>
                        </svg>
                    </div>

                </div>

                <div class="x-buttons_line">
                    <p>
                    <div class="x-button"><span>-0.5</span>
                        <svg>
                            <circle class="o1" r="22" cx="25" cy="25"></circle>
                        </svg>
                    </div>
                    <p>
                    <div class="x-button x-button-active"><span>0</span>
                        <svg>
                            <circle class="o1" r="22" cx="25" cy="25"></circle>
                        </svg>
                    </div>
                    <p>
                    <div class="x-button"><span>0.5</span>
                        <svg>
                            <circle class="o1" r="22" cx="25" cy="25"></circle>
                        </svg>
                    </div>

                </div>
                <div class="x-buttons_line">
                    <p>
                    <div class="x-button"><span>1</span>
                        <svg>
                            <circle class="o1" r="22" cx="25" cy="25"></circle>
                        </svg>
                    </div>
                    <p>
                    <div class="x-button"><span>1.5</span>
                        <svg>
                            <circle class="o1" r="22" cx="25" cy="25"></circle>
                        </svg>
                    </div>
                    <p>
                    <div class="x-button"><span>2</span>
                        <svg>
                            <circle class="o1" r="22" cx="25" cy="25"></circle>
                        </svg>
                    </div>

                </div>
            </div>
        </div>
        <div class="text_and_select_form">
            <div class="select">
                <strong>
                    R:
                </strong>
                <span class="error" id="error1"></span>
                <label>
                    <select class="rInput">
                        <option value="0"></option>
                        <option value="1">1</option>
                        <option value="1.5">1.5</option>
                        <option value="2">2</option>
                        <option value="2.5">2.5</option>
                        <option value="3">3</option>
                    </select>
                </label>
            </div>
            <div class="text">
                <label>
                    <strong>Y Value:</strong>
                    <span class="error" id="error2"></span>
                    <input type="text" id="text" class="yInput" placeholder="Введите Y">
                </label>
            </div>
            <div class="send_and_clear">
                <button type="button" id="send"><span class="text_send_clear">Отправить</span></button>
                <button type="button" id="clear"><span class="text_send_clear">Очистить</span></button>
                <button type="button" class="game"><span id="game">Game</span></button>
            </div>
        </div>
    </form>
    <td valign="top">
        <table class="result" cellspacing="0">
            <tr class="resultHeader">
                <th>X</th>
                <th>Y</th>
                <th>R</th>
                <th>RESULT</th>
                <th>TIME</th>
            </tr>
        </table>
    </td>
</div>
<footer class="bottom">
    <a id="bottom-link" href="https://www.youtube.com/watch?v=uMrp1c6hqhY%22%3E">Не нажимайте</a>
</footer>
<script src="JS/button.js"></script>
<script src="JS/graph.js"></script>
<script src="JS/script.js"></script>
</body>
</html>
