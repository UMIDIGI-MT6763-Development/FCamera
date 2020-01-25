.class public Lcom/baidu/aip/speech/TtsResponse;
.super Ljava/lang/Object;
.source "TtsResponse.java"


# instance fields
.field private data:[B

.field private result:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    iget-object v0, p0, Lcom/baidu/aip/speech/TtsResponse;->data:[B

    return-object v0
.end method

.method public getResult()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/baidu/aip/speech/TtsResponse;->result:Lorg/json/JSONObject;

    return-object v0
.end method

.method public setData([B)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/aip/speech/TtsResponse;->data:[B

    return-void
.end method

.method public setResult(Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/aip/speech/TtsResponse;->result:Lorg/json/JSONObject;

    return-void
.end method
