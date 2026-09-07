import express from "express";
import { prisma } from "db/client";

const app=express();

app.get("/",(req,res)=>{
    prisma.user.findMany({})
})