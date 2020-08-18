import express from "express";
import got from "got";

const app=express();

app.get("/",async (req,res)=>{
    await got("https://app.captchas.io/",{
        http2:true,
    });
    res.json({
        ip:await got("https://icanhazip.com").text(),
        ...req.query
    })
});

const PORT=3000;

app.listen(PORT,()=>console.log("Listening on",PORT));
