const fs = require('fs');
const Discord = require("discord.js");
const prefix= "!";

const Client = new Discord.Client({
    intents: [
        Discord.Intents.FLAGS.GUILDS,
        Discord.Intents.FLAGS.GUILD_MESSAGES
     ]});




// Renvoi dans la console si le bot est opérationnel
Client.on("ready", () => {
    console.log("SGW Overwatch is on Air");
});

// Réponds la liste des tasks si !taskred est demandé dans un message
Client.on("messageCreate", message => {
    if(message.author.bot) return;
    // !task
    if (message.content === prefix + "taskred"){
       // Ouvre le fichier task_red et le lis
        fs.readFile('./data/task_red.txt', { encoding: 'utf8' }, (err, content) => {
            // If an error occurred, output it and return
            if(err) return console.error(err);
            // No error occurred, content is a string
            message.reply (content);
        });
    }
});

Client.login("OTIxMTMzNDk4ODg1MTAzNjc3.Ybueaw.gdJbLm8Lc30yxQFAPMJmWIaztDw");