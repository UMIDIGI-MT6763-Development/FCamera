.class public Lcom/freeme/elementscenter/data/Header;
.super Ljava/lang/Object;
.source "Header.java"


# static fields
.field public static final HEADER_LENGTH:I = 0x1c

.field public static final TLV_HEADER_LENGTH:I = 0x54

.field public static final XIP_NOTIFY:I = 0x3

.field public static final XIP_REQUEST:I = 0x1

.field public static final XIP_RESPONSE:I = 0x2


# instance fields
.field private basicVer:B

.field private firstTransaction:J

.field private length:I

.field private messageCode:I

.field private reserved:S

.field private secondTransaction:J

.field private type:B


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/freeme/elementscenter/data/Header;->basicVer:B

    const/4 v1, 0x0

    iput v1, p0, Lcom/freeme/elementscenter/data/Header;->length:I

    iput-byte v0, p0, Lcom/freeme/elementscenter/data/Header;->type:B

    iput-short v1, p0, Lcom/freeme/elementscenter/data/Header;->reserved:S

    return-void
.end method


# virtual methods
.method public getBasicVer()B
    .locals 1

    iget-byte v0, p0, Lcom/freeme/elementscenter/data/Header;->basicVer:B

    return v0
.end method

.method public getFirstTransaction()J
    .locals 2

    iget-wide v0, p0, Lcom/freeme/elementscenter/data/Header;->firstTransaction:J

    return-wide v0
.end method

.method public getLength()I
    .locals 1

    iget v0, p0, Lcom/freeme/elementscenter/data/Header;->length:I

    return v0
.end method

.method public getMessageCode()I
    .locals 1

    iget v0, p0, Lcom/freeme/elementscenter/data/Header;->messageCode:I

    return v0
.end method

.method public getReserved()S
    .locals 1

    iget-short v0, p0, Lcom/freeme/elementscenter/data/Header;->reserved:S

    return v0
.end method

.method public getSecondTransaction()J
    .locals 2

    iget-wide v0, p0, Lcom/freeme/elementscenter/data/Header;->secondTransaction:J

    return-wide v0
.end method

.method public getTransactionAsUUID()Ljava/util/UUID;
    .locals 5

    new-instance v0, Ljava/util/UUID;

    iget-wide v1, p0, Lcom/freeme/elementscenter/data/Header;->firstTransaction:J

    iget-wide v3, p0, Lcom/freeme/elementscenter/data/Header;->secondTransaction:J

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    return-object v0
.end method

.method public getType()B
    .locals 1

    iget-byte v0, p0, Lcom/freeme/elementscenter/data/Header;->type:B

    return v0
.end method

.method public setBasicVer(B)V
    .locals 0

    iput-byte p1, p0, Lcom/freeme/elementscenter/data/Header;->basicVer:B

    return-void
.end method

.method public setFirstTransaction(J)V
    .locals 0

    iput-wide p1, p0, Lcom/freeme/elementscenter/data/Header;->firstTransaction:J

    return-void
.end method

.method public setHeaderType(B)V
    .locals 0

    iput-byte p1, p0, Lcom/freeme/elementscenter/data/Header;->type:B

    return-void
.end method

.method public setLength(I)V
    .locals 0

    iput p1, p0, Lcom/freeme/elementscenter/data/Header;->length:I

    return-void
.end method

.method public setMessageCode(I)V
    .locals 1

    if-lez p1, :cond_0

    iput p1, p0, Lcom/freeme/elementscenter/data/Header;->messageCode:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "invalid message code."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setReserved(S)V
    .locals 0

    iput-short p1, p0, Lcom/freeme/elementscenter/data/Header;->reserved:S

    return-void
.end method

.method public setSecondTransaction(J)V
    .locals 0

    iput-wide p1, p0, Lcom/freeme/elementscenter/data/Header;->secondTransaction:J

    return-void
.end method

.method public setTransaction(Ljava/util/UUID;)V
    .locals 2

    invoke-virtual {p1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/freeme/elementscenter/data/Header;->firstTransaction:J

    invoke-virtual {p1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/freeme/elementscenter/data/Header;->secondTransaction:J

    return-void
.end method

.method public setType(B)V
    .locals 0

    iput-byte p1, p0, Lcom/freeme/elementscenter/data/Header;->type:B

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "ver"

    iget-byte v2, p0, Lcom/freeme/elementscenter/data/Header;->basicVer:B

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "type"

    iget-byte v2, p0, Lcom/freeme/elementscenter/data/Header;->type:B

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "msb"

    iget-wide v2, p0, Lcom/freeme/elementscenter/data/Header;->firstTransaction:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "lsb"

    iget-wide v2, p0, Lcom/freeme/elementscenter/data/Header;->secondTransaction:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "mcd"

    iget v2, p0, Lcom/freeme/elementscenter/data/Header;->messageCode:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const-string v0, ""

    return-object v0
.end method
