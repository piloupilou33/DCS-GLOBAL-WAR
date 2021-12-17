//declaration des librairies nécessaires

const fs = require('fs');
const readline = require('readline');
const Stream = require('stream');
const Discord = require("discord.js");
const { readLastLines, readLastLinesEnc } = require("read-last-lines-ts")

//fichier de conf du bot
const Config = require ("./config.json");


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
const chid_aa_task_red = '921185502890197012';
const chid_ag_task_red = '921205276340809788';
const chid_csar_task_red = '921205316891328572';
const chid_logistic_task_red = '921205366879031317';
//********BLEU******/
const chid_aa_task_blue = '921185541079314522';
const chid_ag_task_blue = '921205444947636225';
const chid_csar_task_blue = '921205496592089139';
const chid_logistic_task_blue = '921205551235498025';

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


//Connecte le client au serveur discord
Client.login(Config.token);

// Code qui s'active quand le bot est connecté au serveur
Client.on("ready", () => {
    console.log("SGW Overwatch is on Air");

    // set les ID des channels des task de chaque coalition
    channel_aa_task_red=Client.channels.cache.get(chid_aa_task_red);
    channel_ag_task_red=Client.channels.cache.get(chid_ag_task_red);
    channel_csar_task_red=Client.channels.cache.get(chid_csar_task_red);
    channel_logistic_task_red=Client.channels.cache.get(chid_logistic_task_red);
    channel_aa_task_blue=Client.channels.cache.get(chid_aa_task_blue);
    channel_ag_task_blue=Client.channels.cache.get(chid_ag_task_blue);
    channel_csar_task_blue=Client.channels.cache.get(chid_csar_task_blue);
    channel_logistic_task_blue=Client.channels.cache.get(chid_logistic_task_blue);

    
//vérifie toutes les x secondes si de nouvelles task sont apparues
    setInterval (function () {
        //Task Air/Air Rouge
        var buffer = readLastLinesEnc("utf8")(file_aa_task_red, 1)
        if (buffer != ""){
            if (buffer!= before_last_aa_task_red){
            channel_aa_task_red.send("Nouvelle Task A/A Red : \n" + buffer);
            before_last_aa_task_red=buffer;
            }
        }
        buffer="";
        //Task Air/Ground Rouge
        buffer = readLastLinesEnc("utf8")(file_ag_task_red, 1)
        if (buffer != ""){
            if (buffer!= before_last_ag_task_red){
                before_last_ag_task_red=buffer;
                channel_ag_task_red.send("Nouvelle Task A/G Red : \n" + buffer);
            }
        }
        buffer=""; 
        //Task CSAR Rouge
        buffer = readLastLinesEnc("utf8")(file_csar_task_red, 1)
        if (buffer != ""){
            if (buffer!= before_last_csar_task_red){
                before_last_csar_task_red=buffer;
                channel_csar_task_red.send("Nouvelle Task CSAR Red : \n" + buffer);
            }
        }
        buffer="";
        //Task Logistic Rouge
        buffer = readLastLinesEnc("utf8")(file_logistic_task_red, 1)
        if (buffer != ""){
            if (buffer!= before_last_logistic_task_red){
                before_last_logistic_task_red=buffer;
                channel_logistic_task_red.send("Nouvelle Task Logistic Red : \n" + buffer);
            }
        }
        buffer=""; 
        //Task A/A Blue
        buffer = readLastLinesEnc("utf8")(file_aa_task_blue, 1)
        if (buffer != ""){
            if (buffer!= before_last_aa_task_blue){
                before_last_aa_task_blue=buffer;
                channel_aa_task_blue.send("Nouvelle Task A/A Blue : \n" + buffer);
            }
        }
        buffer=""; 
        //Task A/G Blue
        buffer = readLastLinesEnc("utf8")(file_ag_task_blue, 1)
        if (buffer != ""){
            if (buffer!= before_last_ag_task_blue){
                before_last_ag_task_blue=buffer;
                channel_ag_task_blue.send("Nouvelle Task A/G Blue : \n" + buffer);
            }
        }
        buffer=""; 
        //Task CSAR Blue
        buffer = readLastLinesEnc("utf8")(file_csar_task_blue, 1)
        if (buffer != ""){
            if (buffer!= before_last_csar_task_blue){
                before_last_csar_task_blue=buffer;
                channel_csar_task_blue.send("Nouvelle Task CSAR Blue : \n" + buffer);
            }
        }
        buffer=""; 
        //Task Logistic Blue
        buffer = readLastLinesEnc("utf8")(file_logistic_task_blue, 1)
        if (buffer != ""){
            if (buffer!= before_last_logistic_task_blue){
                before_last_logistic_task_blue=buffer;
                channel_logistic_task_blue.send("Nouvelle Task Logistic Blue : \n" + buffer);
            }
        }
        buffer=""; 

    }, time_bot * 1000);
});

// Fonction !clearchat qui permet de clear 99 messages d'un channel Discord
Client.on("messageCreate", msg => {
    if (msg.content.toLowerCase().startsWith(Config.prefix + "clearchat")) {
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



