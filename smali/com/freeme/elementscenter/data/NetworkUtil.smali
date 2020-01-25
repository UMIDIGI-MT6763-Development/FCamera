.class public Lcom/freeme/elementscenter/data/NetworkUtil;
.super Ljava/lang/Object;
.source "NetworkUtil.java"


# static fields
.field public static ENCODE_DECODE_KEY:Ljava/lang/String; = "x_s0_s22"

.field private static mFilePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static accessNetworkByPost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ""

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "utf-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    sget-object v2, Lcom/freeme/elementscenter/data/NetworkUtil;->ENCODE_DECODE_KEY:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {p1, v2}, Lcom/freeme/elementscenter/data/DESUtil;->encrypt([B[B)[B

    move-result-object p1

    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v2, 0x1

    :try_start_1
    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/16 v3, 0x2710

    invoke-virtual {p0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v3, 0x4e20

    invoke-virtual {p0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v3, "POST"

    invoke-virtual {p0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const-string v2, "contentType"

    const-string v3, "utf-8"

    invoke-virtual {p0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Content-Type"

    const-string v3, "application/x-www-form-urlencoded"

    invoke-virtual {p0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Content-Length"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    new-instance p1, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {p1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    new-instance v2, Lorg/apache/http/util/ByteArrayBuffer;

    const/16 v3, 0x400

    invoke-direct {v2, v3}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    const-string v1, "isPress"

    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_0
    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->read()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Lorg/apache/http/util/ByteArrayBuffer;->append(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result v3

    if-lez v3, :cond_2

    if-eqz v1, :cond_1

    invoke-virtual {v2}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B

    move-result-object v1

    sget-object v3, Lcom/freeme/elementscenter/data/NetworkUtil;->ENCODE_DECODE_KEY:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v1, v3}, Lcom/freeme/elementscenter/data/DESUtil;->decrypt([B[B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/freeme/elementscenter/data/ZipUtil;->uncompress([B)[B

    move-result-object v1

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    move-object v0, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B

    move-result-object v1

    sget-object v3, Lcom/freeme/elementscenter/data/NetworkUtil;->ENCODE_DECODE_KEY:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v1, v3}, Lcom/freeme/elementscenter/data/DESUtil;->decrypt([B[B)[B

    move-result-object v1

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v3

    :cond_2
    :goto_1
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->close()V

    :goto_2
    invoke-virtual {v2}, Lorg/apache/http/util/ByteArrayBuffer;->clear()V

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v1

    move-object v6, v1

    move-object v1, p0

    move-object p0, p1

    move-object p1, v6

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v2, v1

    :goto_3
    move-object v1, p1

    goto :goto_6

    :catch_1
    move-exception v2

    move-object v6, v1

    move-object v1, p0

    move-object p0, p1

    move-object p1, v2

    move-object v2, v6

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_6

    :catch_2
    move-exception p1

    move-object v2, v1

    move-object v1, p0

    move-object p0, v2

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object p0, v1

    move-object v2, p0

    goto :goto_6

    :catch_3
    move-exception p0

    move-object p1, p0

    move-object p0, v1

    move-object v2, p0

    :goto_4
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v3, "error"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NetworkUtil accessNetworkByPost exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->close()V

    :cond_5
    if-eqz v2, :cond_6

    goto :goto_2

    :cond_6
    :goto_5
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_4
    move-exception v0

    move-object v6, v1

    move-object v1, p0

    move-object p0, v6

    :goto_6
    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_7
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    :cond_8
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lorg/apache/http/util/ByteArrayBuffer;->clear()V

    :cond_9
    throw v0
.end method

.method public static buildHeadData(I)Ljava/lang/String;
    .locals 4

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    new-instance v1, Lcom/freeme/elementscenter/data/Header;

    invoke-direct {v1}, Lcom/freeme/elementscenter/data/Header;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/freeme/elementscenter/data/Header;->setBasicVer(B)V

    const/16 v3, 0x54

    invoke-virtual {v1, v3}, Lcom/freeme/elementscenter/data/Header;->setLength(I)V

    invoke-virtual {v1, v2}, Lcom/freeme/elementscenter/data/Header;->setType(B)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/freeme/elementscenter/data/Header;->setReserved(S)V

    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/freeme/elementscenter/data/Header;->setFirstTransaction(J)V

    invoke-virtual {v0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/freeme/elementscenter/data/Header;->setSecondTransaction(J)V

    invoke-virtual {v1, p0}, Lcom/freeme/elementscenter/data/Header;->setMessageCode(I)V

    invoke-virtual {v1}, Lcom/freeme/elementscenter/data/Header;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static downImgFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 6

    sput-object p1, Lcom/freeme/elementscenter/data/NetworkUtil;->mFilePath:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v2, v1, :cond_1

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    new-instance v2, Ljava/io/FileOutputStream;

    sget-object v3, Lcom/freeme/elementscenter/data/NetworkUtil;->mFilePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x400

    new-array v3, v3, [B

    :goto_0
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    invoke-virtual {v2, v3, p1, v4}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_5

    :catchall_0
    move-exception p1

    move-object v1, p0

    goto :goto_6

    :catch_0
    move-object v1, p0

    goto :goto_1

    :catch_1
    move-object v1, p0

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v1, p0

    goto :goto_4

    :catchall_1
    move-exception p1

    goto :goto_6

    :catch_3
    :goto_1
    :try_start_2
    new-instance p0, Ljava/io/File;

    sget-object v2, Lcom/freeme/elementscenter/data/NetworkUtil;->mFilePath:Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2
    if-eqz v1, :cond_3

    :goto_2
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_5

    :catch_4
    :goto_3
    :try_start_3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v1, :cond_3

    goto :goto_2

    :catch_5
    move-exception v0

    :goto_4
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    :goto_5
    return-object v0

    :goto_6
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    throw p1
.end method
