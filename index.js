//declaration des librairies nécessaires

var lineReader = require('line-reader');
const fs = require('fs');
const Discord = require("discord.js");
//fichier de conf du bot
const Config = require ("./config.json");
const prefix = "!"
//création du client discord
const Client = new Discord.Client({
    intents: [
        Discord.Intents.FLAGS.GUILDS,
        Discord.Intents.FLAGS.GUILD_MESSAGES
     ]});



//définition du temps du bot
var time_bot = 5;

//definition des chemins des fichiers de task crée par le script DCS
//********ROUGE******/
const file_aa_task_red= "./data/aa_task_red.txt";
const file_ag_task_red= "./data/ag_task_red.txt";
const file_csar_task_red= "./data/csar_task_red.txt";
const file_logistic_task_red= "./data/logistic_task_red.txt";
//********BLEU******/
const file_aa_task_blue= "./data/aa_task_blue.txt";
const file_ag_task_blue= "./data/ag_task_blue.txt";
const file_csar_task_blue= "./data/csar_task_blue.txt";
const file_logistic_task_blue= "./data/logistic_task_blue.txt";


//definition des ID des channels txt pour l'envoi des task dans discord
//********ROUGE******/
const aa_task_red_chid = '921185502890197012';
const ag_task_red_chid = '921205276340809788';
const csar_task_red_chid = '921205316891328572';
const logistic_task_red_chid = '921205366879031317';
//********BLEU******/
const aa_task_blue_chid = '921185541079314522';
const ag_task_blue_chid = '921205444947636225';
const csar_task_blue_chid = '921205496592089139';
const logistic_task_blue_chid = '921205551235498025';

//definition des objet channel discord - seront complet lors de la connexion du bot au serveur
//********ROUGE******/
var channel_aa_task_red="";
var channel_ag_task_red="";
var channel_csar_task_red="";
var channel_logistic_task_red="";
//********BLEU******/
var channel_aa_task_blue="";
var channel_ag_task_blue="";
var channel_csar_task_blue="";
var channel_logistic_task_blue="";


//variables temporaires de traitement des tasks
var before_last_aa_task_blue="";
var before_last_ag_task_blue="";
var before_last_csar_task_blue="";
var before_last_logistic_task_blue="";
var before_last_aa_task_red="";
var before_last_ag_task_red="";
var before_last_csar_task_red="";
var before_last_logistic_task_red="";


// var temp_aa_task_blue="";
// var temp_ag_task_blue="";
// var temp_csar_task_blue="";
// var temp_logistic_task_blue="";
// var temp_aa_task_red="";
// var temp_ag_task_red="";
// var temp_csar_task_red="";
// var temp_logistic_task_red="";

var temp="";
var temp2="";
var temp3="";

// //fonction de lecture de la dernière ligne d'un fichier txt
// function read_last_ligne (file) {
    
//     lineReader.eachLine(file, function (line, last) {
//         if (last) {
//             temp=line;
//             line="";
//         };
//     });
//     if (temp!=""){
//         return temp;
//     } else {
//         temp=""
//         return temp;
//     };
// }; 

//Connecte le client au serveur discord
Client.login(Config.token);

// Code qui s'active quand le bot est connecté au serveur
Client.on("ready", () => {
    console.log("SGW Overwatch is on Air");

    // set les ID des channels des task de chaque coalition
    channel_aa_task_red=Client.channels.cache.get(aa_task_red_chid);
    channel_ag_task_red=Client.channels.cache.get(ag_task_red_chid);
    channel_csar_task_red=Client.channels.cache.get(csar_task_red_chid);
    channel_logistic_task_red=Client.channels.cache.get(logistic_task_red_chid);
    channel_aa_task_blue=Client.channels.cache.get(aa_task_blue_chid);
    channel_ag_task_blue=Client.channels.cache.get(ag_task_blue_chid);
    channel_csar_task_blue=Client.channels.cache.get(csar_task_blue_chid);
    channel_logistic_task_blue=Client.channels.cache.get(logistic_task_blue_chid);

    
//vérifie toutes les x secondes si de nouvelles task sont apparues
    setInterval (function () {
        //Task Air/Air Rouge
        lineReader.eachLine(file_aa_task_red, function (line, last) {
            if (last) {
                if (line!="" && line!=before_last_aa_task_red){
                    channel_aa_task_red.send(line);
                    before_last_aa_task_red=line;
                }
            };
        });
    }, time_bot * 1000);
    delete lineReader;
    setInterval (function () {
        //Task Air/Ground Rouge
        lineReader.eachLine(file_ag_task_red, function (line, last) {
            if (last) {
                if (line!="" && line!=before_last_ag_task_red){
                    channel_ag_task_red.send(line);
                    before_last_ag_task_red=line;
                }
            };
        });
    }, time_bot * 1000);
          //********TASK ROUGE********** */
        //**************************** */
        //Task Air/Air Rouge
        //     temp2=read_last_ligne(file_aa_task_red);
        //     if (temp2=="" && temp2==before_last_aa_task_red){
                
        //     } else {
        //         channel_aa_task_red.send(temp2);
        //         before_last_aa_task_red=temp2;
        //         temp2="";
        //     }
            
        //     //Task Air/Ground Rouge
        //     temp3=read_last_ligne(file_ag_task_red);
        //     if (temp3=="" && temp3==before_last_ag_task_red){
        //     } else {
        //         channel_ag_task_red.send(temp3);
        //         before_last_ag_task_red=temp3;
        //         temp3="";
        //     }
        // //Task CSAR Rouge
        // temp2=read_last_ligne(file_csar_task_red);
        // if (temp2!=="" && temp2!==before_last_csar_task_red){
        //     channel_csar_task_red.send(temp2);
        //     before_last_csar_task_red=temp2;
        // }
        // temp2="";
        // //Task Logistic Rouge
        // temp2=read_last_ligne(file_logistic_task_red);
        // if (temp2!=="" && temp2!==before_last_logistic_task_red){
        //     channel_logistic_task_red.send(temp2);
        //     before_last_logistic_task_red=temp2;
        // }
        // temp2="";
        // //********TASK BLEU********** */
        // //**************************** */
        // //Task Air/Air Bleu
        // temp2=read_last_ligne(file_aa_task_blue);
        // if (temp2!==""&& temp2!==before_last_aa_task_blue){
        //     channel_aa_task_blue.send(temp2);
        //     before_last_aa_task_blue=temp2;
        // }
        // temp2="";
        // //Task Air/Ground Bleu
        // temp2=read_last_ligne(file_ag_task_blue);
        // if (temp2!=="" && temp2!==before_last_ag_task_blue){
        //     channel_ag_task_blue.send(temp2);
        //     before_last_ag_task_blue=temp2;
        // }
        // temp2="";
        // //Task CSAR Bleu
        // temp2=read_last_ligne(file_csar_task_blue);
        // if (temp2!=="" && temp2!==before_last_csar_task_blue){
        //     channel_csar_task_blue.send(temp2);
        //     before_last_csar_task_blue=temp2;
        // }
        // temp2="";
        // //Task Logistic Bleu
        // temp2=read_last_ligne(file_logistic_task_blue);
        // if (temp2!=="" && temp2!==before_last_logistic_task_blue){
        //     channel_logistic_task_blue.send(temp2);
        //     before_last_logistic_task_blue=temp2;
        // }
        // temp2="";
        // }, time_bot * 1000)

});

// Fonction !clearchat qui permet de clear 99 messages d'un channel Discord
Client.on("messageCreate", msg => {
    if (msg.content.toLowerCase().startsWith(prefix + "clearchat")) {
        msg.channel.bulkDelete(99);
    }
});


// Réponds la liste des tasks si !taskred est demandé dans un message
// Client.on("messageCreate", message => {
//     if(message.author.bot) return;
//     // !task
//     if (message.content === prefix + "taskred"){
//        // Ouvre le fichier task_red et le lis
//         fs.readFile('./data/task_red.txt', { encoding: 'utf8' }, (err, content) => {
//             // If an error occurred, output it and return
//             if(err) return console.error(err);
//             // No error occurred, content is a string
//             channel_task_red.send(content);
            
//         });
//     }
// });



