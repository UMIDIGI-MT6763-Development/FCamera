.class public Lorg/json/JSONWriter;
.super Ljava/lang/Object;
.source "JSONWriter.java"


# static fields
.field private static final maxdepth:I = 0xc8


# instance fields
.field private comma:Z

.field protected mode:C

.field private final stack:[Lorg/json/JSONObject;

.field private top:I

.field protected writer:Ljava/io/Writer;


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/json/JSONWriter;->comma:Z

    const/16 v1, 0x69

    iput-char v1, p0, Lorg/json/JSONWriter;->mode:C

    const/16 v1, 0xc8

    new-array v1, v1, [Lorg/json/JSONObject;

    iput-object v1, p0, Lorg/json/JSONWriter;->stack:[Lorg/json/JSONObject;

    iput v0, p0, Lorg/json/JSONWriter;->top:I

    iput-object p1, p0, Lorg/json/JSONWriter;->writer:Ljava/io/Writer;

    return-void
.end method

.method private append(Ljava/lang/String;)Lorg/json/JSONWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-eqz p1, :cond_4

    iget-char v0, p0, Lorg/json/JSONWriter;->mode:C

    const/16 v1, 0x61

    const/16 v2, 0x6f

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/json/JSONException;

    const-string v0, "Value out of sequence."

    invoke-direct {p1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lorg/json/JSONWriter;->comma:Z

    if-eqz v0, :cond_2

    iget-char v0, p0, Lorg/json/JSONWriter;->mode:C

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/json/JSONWriter;->writer:Ljava/io/Writer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    :cond_2
    iget-object v0, p0, Lorg/json/JSONWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char p1, p0, Lorg/json/JSONWriter;->mode:C

    if-ne p1, v2, :cond_3

    const/16 p1, 0x6b

    iput-char p1, p0, Lorg/json/JSONWriter;->mode:C

    :cond_3
    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/json/JSONWriter;->comma:Z

    return-object p0

    :catch_0
    move-exception p1

    new-instance v0, Lorg/json/JSONException;

    invoke-direct {v0, p1}, Lorg/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_4
    new-instance p1, Lorg/json/JSONException;

    const-string v0, "Null pointer"

    invoke-direct {p1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private end(CC)Lorg/json/JSONWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    iget-char v0, p0, Lorg/json/JSONWriter;->mode:C

    if-eq v0, p1, :cond_1

    new-instance p2, Lorg/json/JSONException;

    const/16 v0, 0x61

    if-ne p1, v0, :cond_0

    const-string p1, "Misplaced endArray."

    goto :goto_0

    :cond_0
    const-string p1, "Misplaced endObject."

    :goto_0
    invoke-direct {p2, p1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    invoke-direct {p0, p1}, Lorg/json/JSONWriter;->pop(C)V

    :try_start_0
    iget-object p1, p0, Lorg/json/JSONWriter;->writer:Ljava/io/Writer;

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/json/JSONWriter;->comma:Z

    return-object p0

    :catch_0
    move-exception p1

    new-instance p2, Lorg/json/JSONException;

    invoke-direct {p2, p1}, Lorg/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private pop(C)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    iget v0, p0, Lorg/json/JSONWriter;->top:I

    if-lez v0, :cond_4

    iget-object v1, p0, Lorg/json/JSONWriter;->stack:[Lorg/json/JSONObject;

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v1, v0

    const/16 v1, 0x61

    const/16 v2, 0x6b

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-ne v0, p1, :cond_3

    iget p1, p0, Lorg/json/JSONWriter;->top:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/json/JSONWriter;->top:I

    iget p1, p0, Lorg/json/JSONWriter;->top:I

    if-nez p1, :cond_1

    const/16 v1, 0x64

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/json/JSONWriter;->stack:[Lorg/json/JSONObject;

    add-int/lit8 p1, p1, -0x1

    aget-object p1, v0, p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    iput-char v1, p0, Lorg/json/JSONWriter;->mode:C

    return-void

    :cond_3
    new-instance p1, Lorg/json/JSONException;

    const-string v0, "Nesting error."

    invoke-direct {p1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Lorg/json/JSONException;

    const-string v0, "Nesting error."

    invoke-direct {p1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private push(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    iget v0, p0, Lorg/json/JSONWriter;->top:I

    const/16 v1, 0xc8

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/json/JSONWriter;->stack:[Lorg/json/JSONObject;

    aput-object p1, v1, v0

    if-nez p1, :cond_0

    const/16 p1, 0x61

    goto :goto_0

    :cond_0
    const/16 p1, 0x6b

    :goto_0
    iput-char p1, p0, Lorg/json/JSONWriter;->mode:C

    iget p1, p0, Lorg/json/JSONWriter;->top:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/json/JSONWriter;->top:I

    return-void

    :cond_1
    new-instance p1, Lorg/json/JSONException;

    const-string v0, "Nesting too deep."

    invoke-direct {p1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public array()Lorg/json/JSONWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    iget-char v0, p0, Lorg/json/JSONWriter;->mode:C

    const/16 v1, 0x69

    if-eq v0, v1, :cond_1

    const/16 v1, 0x6f

    if-eq v0, v1, :cond_1

    const/16 v1, 0x61

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "Misplaced array."

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/json/JSONWriter;->push(Lorg/json/JSONObject;)V

    const-string v0, "["

    invoke-direct {p0, v0}, Lorg/json/JSONWriter;->append(Ljava/lang/String;)Lorg/json/JSONWriter;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/json/JSONWriter;->comma:Z

    return-object p0
.end method

.method public endArray()Lorg/json/JSONWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/16 v0, 0x61

    const/16 v1, 0x5d

    invoke-direct {p0, v0, v1}, Lorg/json/JSONWriter;->end(CC)Lorg/json/JSONWriter;

    move-result-object v0

    return-object v0
.end method

.method public endObject()Lorg/json/JSONWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/16 v0, 0x6b

    const/16 v1, 0x7d

    invoke-direct {p0, v0, v1}, Lorg/json/JSONWriter;->end(CC)Lorg/json/JSONWriter;

    move-result-object v0

    return-object v0
.end method

.method public key(Ljava/lang/String;)Lorg/json/JSONWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-eqz p1, :cond_2

    iget-char v0, p0, Lorg/json/JSONWriter;->mode:C

    const/16 v1, 0x6b

    if-ne v0, v1, :cond_1

    :try_start_0
    iget-object v0, p0, Lorg/json/JSONWriter;->stack:[Lorg/json/JSONObject;

    iget v1, p0, Lorg/json/JSONWriter;->top:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->putOnce(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-boolean v0, p0, Lorg/json/JSONWriter;->comma:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/json/JSONWriter;->writer:Ljava/io/Writer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    :cond_0
    iget-object v0, p0, Lorg/json/JSONWriter;->writer:Ljava/io/Writer;

    invoke-static {p1}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/json/JSONWriter;->writer:Ljava/io/Writer;

    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/json/JSONWriter;->comma:Z

    const/16 p1, 0x6f

    iput-char p1, p0, Lorg/json/JSONWriter;->mode:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    new-instance v0, Lorg/json/JSONException;

    invoke-direct {v0, p1}, Lorg/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    new-instance p1, Lorg/json/JSONException;

    const-string v0, "Misplaced key."

    invoke-direct {p1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lorg/json/JSONException;

    const-string v0, "Null key."

    invoke-direct {p1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public object()Lorg/json/JSONWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    iget-char v0, p0, Lorg/json/JSONWriter;->mode:C

    const/16 v1, 0x6f

    const/16 v2, 0x69

    if-ne v0, v2, :cond_0

    iput-char v1, p0, Lorg/json/JSONWriter;->mode:C

    :cond_0
    iget-char v0, p0, Lorg/json/JSONWriter;->mode:C

    if-eq v0, v1, :cond_2

    const/16 v1, 0x61

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "Misplaced object."

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    const-string v0, "{"

    invoke-direct {p0, v0}, Lorg/json/JSONWriter;->append(Ljava/lang/String;)Lorg/json/JSONWriter;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {p0, v0}, Lorg/json/JSONWriter;->push(Lorg/json/JSONObject;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/json/JSONWriter;->comma:Z

    return-object p0
.end method

.method public value(D)Lorg/json/JSONWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p1, p2}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {p0, v0}, Lorg/json/JSONWriter;->value(Ljava/lang/Object;)Lorg/json/JSONWriter;

    move-result-object p1

    return-object p1
.end method

.method public value(J)Lorg/json/JSONWriter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/json/JSONWriter;->append(Ljava/lang/String;)Lorg/json/JSONWriter;

    move-result-object p1

    return-object p1
.end method

.method public value(Ljava/lang/Object;)Lorg/json/JSONWriter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-static {p1}, Lorg/json/JSONObject;->valueToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/json/JSONWriter;->append(Ljava/lang/String;)Lorg/json/JSONWriter;

    move-result-object p1

    return-object p1
.end method

.method public value(Z)Lorg/json/JSONWriter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-eqz p1, :cond_0

    const-string p1, "true"

    goto :goto_0

    :cond_0
    const-string p1, "false"

    :goto_0
    invoke-direct {p0, p1}, Lorg/json/JSONWriter;->append(Ljava/lang/String;)Lorg/json/JSONWriter;

    move-result-object p1

    return-object p1
.end method
