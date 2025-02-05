<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quiz</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body, html {
            height: 100%;
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #001f3f, #001233);
            color: white;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }

        .question-box {
            background-color: #003366;
            padding: 20px 30px;
            border: 3px solid #0074D9;
            border-radius: 10px;
            text-align: center;
            font-size: 1.5rem;
            width: 80%;
            max-width: 800px;
            margin-bottom: 30px;
            box-shadow: 0 0 15px rgba(0, 116, 217, 0.7);
        }

        .answers {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 20px;
            width: 80%;
            max-width: 800px;
        }

        .answer-btn {
            background-color: #0074D9;
            color: white;
            padding: 15px;
            border: none;
            border-radius: 8px;
            font-size: 1.2rem;
            cursor: pointer;
            transition: background-color 0.3s, transform 0.2s;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.3);
        }

        .answer-btn:hover {
            background-color: #005bb5;
            transform: scale(1.05);
        }
    </style>
</head>
<body>

    <div class="question-box">
        Domanda da 1 a 15
    </div>

    <div class="answers">
        <button class="answer-btn">Risposta 1</button>
        <button class="answer-btn">Risposta 2</button>
        <button class="answer-btn">Risposta 3</button>
        <button class="answer-btn">Risposta 4</button>
    </div>

</body>
</html>
