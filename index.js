//declaration des librairies nécessaires

//const Discord = require("discord.js");
const { readLastLines, readLastLinesEnc } = require("read-last-lines-ts")
const Papa = require("papaparse");
const fs = require('fs');
const discord = require('discord.js');
const { Client, Intents } = require('discord.js');

const myIntents = new Intents();
myIntents.add(Intents.FLAGS.GUILD_PRESENCES, Intents.FLAGS.GUILD_MEMBERS,Intents.FLAGS.GUILDS,Intents.FLAGS.GUILD_MESSAGES);

//création du client discord
const client = new Client({ intents: myIntents });


//fichier de conf du bot
const Config = require ("./config.json");


//définition du temps du bot
var time_bot = 5;

//definition des chemins des fichiers 
//*********************//
//task crée par le script DCS
//********ROUGE******//
const file_aa_task_red= "./data/aa_task_red.txt";
const file_ag_task_red= "./data/ag_task_red.txt";
const file_csar_task_red= "./data/csar_task_red.txt";
const file_logistic_task_red= "./data/logistic_task_red.txt";
//********BLEU******//
const file_aa_task_blue= "./data/aa_task_blue.txt";
const file_ag_task_blue= "./data/ag_task_blue.txt";
const file_csar_task_blue= "./data/csar_task_blue.txt";
const file_logistic_task_blue= "./data/logistic_task_blue.txt";
//*********Grade Players***** */
const file_grades_players= "./data/grade_players.txt";

//ID du DISCORD
const discord_id="814100048665247804";
//*************************************************//
//definition des ID des channels txt pour l'envoi des task dans discord
//*************************************************//
//********ROUGE******//
const chid_aa_task_red = '921185502890197012';
const chid_ag_task_red = '921205276340809788';
const chid_csar_task_red = '921205316891328572';
const chid_logistic_task_red = '921205366879031317';
//********BLEU******//
const chid_aa_task_blue = '921185541079314522';
const chid_ag_task_blue = '921205444947636225';
const chid_csar_task_blue = '921205496592089139';
const chid_logistic_task_blue = '921205551235498025';

//definition des ID des rôles=Grades du discord
const role_id_bleu ="921428798820470794";
const role_id_red ="921428676548124672";
const role_id_general ="921430805799141386";
const role_id_general_div ="921430731211812924";
const role_id_colonel ="921430655076810802";
const role_id_commandant ="921430581269631016";
const role_id_capitaine ="921429900592820275";
const role_id_lieutenant ="921429738801750086";
const role_id_major ="921429637769343047";
const role_id_sergent_chef ="921429465664483368";
const role_id_sergent ="921429162076549160";
const role_id_caporal_chef ="921428364059901952";
const role_id_1st_class ="921428354920484954";
const role_id_recrue ="921427596816822443";

var role_auto = [role_id_recrue,role_id_1st_class,role_id_caporal_chef,role_id_sergent,role_id_sergent_chef]

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

//Connecte le client au serveur discord
client.login(Config.token);

// Code qui s'active quand le bot est connecté au serveur
client.on("ready", () => {
    console.log("SGW Overwatch is on Air");


    channel_aa_task_red=client.channels.cache.get(chid_aa_task_red);
    channel_ag_task_red=client.channels.cache.get(chid_ag_task_red);
    channel_csar_task_red=client.channels.cache.get(chid_csar_task_red);
    channel_logistic_task_red=client.channels.cache.get(chid_logistic_task_red);
    channel_aa_task_blue=client.channels.cache.get(chid_aa_task_blue);
    channel_ag_task_blue=client.channels.cache.get(chid_ag_task_blue);
    channel_csar_task_blue=client.channels.cache.get(chid_csar_task_blue);
    channel_logistic_task_blue=client.channels.cache.get(chid_logistic_task_blue);


    //**************************************************************************/
    //**************************************************************************/
    //vérifie toutes les time_bot secondes si de nouvelles task sont apparues
    //**************************************************************************/
    //**************************************************************************/
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
    //**************************************************************************/
    //**************************************************************************/
    //vérifie toutes les time_bot secondes les grades des joueurs
    //**************************************************************************/
    //**************************************************************************/
    setInterval (function () {
        
    
        var csv = fs.readFileSync(file_grades_players, "utf-8")
        var csv_grade = Papa.parse(csv, {encoding: "utf-8"})
        csv_grade.data.forEach(function(item, index, array) {
            // Recupère tous les noms des membres du Discord
            // Get the Guild and store it under the variable "list"
            const guild = client.guilds.cache.get(discord_id);
            var client_find = guild.members.cache.find(user => user.nickname==item[0]);
            var client_role=client_find.roles.cache.map(r => `${r}`);
            client_role.forEach(function(item){
                role_auto.forEach(function(item2){
                    var item_parse = item.slice(3,21);
                    if (item_parse==item2){
                        client_find.roles.remove(item_parse);
                    }
                })
            })
            if (item[1]==0){
                client_find.roles.add(role_id_recrue);
            }
            if (item[1]==1){
                client_find.roles.add(role_id_1st_class);
            }
            if (item[1]==2){
                client_find.roles.add(role_id_caporal_chef);
            }
            if (item[1]==3){
                client_find.roles.add(role_id_sergent);
            }
            if (item[1]==4){
                client_find.roles.add(role_id_sergent_chef);
            }
            if (item[1]==5){
                client_find.roles.add(role_id_major);
            }
            // if (item[1]==6){
            //     client_find.roles.add(role_id_lieutenant);
            // }
            // if (item[1]==7){
            //     client_find.roles.add(role_id_capitaine);
            // }
            // if (item[1]==8){
            //     client_find.roles.add(role_id_commandant);
            // }
            // if (item[1]==9){
            //     client_find.roles.add(role_id_colonel);
            // }
            // if (item[1]==10){
            //     client_find.roles.add(role_id_general_div);
            // }
            // if (item[1]==11){
            //     client_find.roles.add(role_id_general);
            // }
          });
    }, time_bot * 1000);
});

// Fonction !clearchat qui permet de clear 99 messages d'un channel Discord
client.on("messageCreate", msg => {
    if (msg.content.toLowerCase().startsWith(Config.prefix + "clearchat")) {
        msg.channel.bulkDelete(99);
    }
});

client.on("guildMemberUpdate", (oldMember, newMember) => {
    // Old roles Collection is higher in size than the new one. A role has been removed.
    if (oldMember.roles.cache.size > newMember.roles.cache.size) {
        oldMember.roles.cache.forEach(role => {
            if (!newMember.roles.cache.has(role.id)) {
                var old_grade = oldMember.nickname.substring(
                    oldMember.nickname.indexOf("[")+1, 
                    oldMember.nickname.lastIndexOf("]")
                    );
                var newMember_nick = oldMember.nickname.slice(oldMember.nickname.lastIndexOf("]")+1,newMember.nickname.length);
                client.channels.cache.get("922115179091726406").send("**" + newMember_nick+ "**" + " a perdu le grade de : **" + role.name +"**");
                newMember.setNickname("[]" + newMember_nick);
            }
        });
    } else if (oldMember.roles.cache.size < newMember.roles.cache.size) {
        // Looping through the role and checking which role was added.
        newMember.roles.cache.forEach(role => {
            if (!oldMember.roles.cache.has(role.id)) {
                var old_grade = oldMember.nickname.substring(
                    oldMember.nickname.indexOf("["), 
                    oldMember.nickname.lastIndexOf("]")
                );
                var newMember_nick = oldMember.nickname.slice(newMember.nickname.lastIndexOf("]")+1,newMember.nickname.length);
                if (role.id== role_id_bleu || role.id== role_id_red || role.id== role_id_bleu){
                    console.log("Role non automatique")
                    return;
                } else {
                    if (role.id==role_id_recrue) {
                        newMember.setNickname("[-]" + newMember_nick);
                    }
                    if (role.id==role_id_1st_class) {
                        newMember.setNickname("[❭]" + newMember_nick);
                    }
                    if (role.id==role_id_caporal_chef) {
                        newMember.setNickname("[❱❭❭]" + newMember_nick);
                    }
                    if (role.id==role_id_sergent) {
                        newMember.setNickname("[❱❱]" + newMember_nick);
                    }
                    if (role.id==role_id_sergent_chef) {
                        newMember.setNickname("[❱❱❱]" + newMember_nick);
                    }
                    if (role.id==role_id_major) {
                        newMember.setNickname("[◻]" + newMember_nick);
                    }
                    if (role.id==role_id_lieutenant) {
                        newMember.setNickname("[◼ ◼]" + newMember_nick);
                    }
                    if (role.id==role_id_capitaine) {
                        newMember.setNickname("[◼ ◼ ◼]" + newMember_nick);
                    }
                    if (role.id==role_id_commandant) {
                        newMember.setNickname("[✧]" + newMember_nick);
                    }
                    if (role.id==role_id_colonel) {
                        newMember.setNickname("[✧✧]" + newMember_nick);
                    }
                    if (role.id==role_id_general_div) {
                        newMember.setNickname("[✦✦]" + newMember_nick);
                    }
                    if (role.id==role_id_general) {
                        newMember.setNickname("[✦✦✦]" + newMember_nick);
                    }
                    client.channels.cache.get("922115179091726406").send("Felicitations ! **" + newMember_nick + "**, tu as obtenu le grade de : **" + role.name+"**");
                }
            }
        });
    }
});

// Réponds la liste des tasks si !taskred est demandé dans un message
// client.on("messageCreate", message => {
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



