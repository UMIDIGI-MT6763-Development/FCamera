.class public Lorg/lasque/tusdk/core/utils/AESCoder;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;
    .locals 4

    const/16 v0, 0x20

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    array-length v2, p0

    array-length v3, v0

    if-ge v2, v3, :cond_0

    array-length v2, p0

    goto :goto_0

    :cond_0
    array-length v2, v0

    :goto_0
    invoke-static {p0, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {p0, v0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object p0
.end method

.method private static a(I[BLjava/lang/String;)[B
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p2}, Lorg/lasque/tusdk/core/utils/AESCoder;->a(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object p2

    const/16 v2, 0x10

    new-array v2, v2, [B

    invoke-static {v2, v1}, Ljava/util/Arrays;->fill([BB)V

    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v3, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const-string v2, "AES/CBC/PKCS7Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    invoke-virtual {v2, p0, p2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v2, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "%s aesCBC256PKCS7Padding"

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const-string v2, "AESCoder"

    aput-object v2, p2, v1

    invoke-static {p0, p1, p2}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static decodeCBC256PKCS7Padding(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    invoke-static {p0, p1}, Lorg/lasque/tusdk/core/utils/AESCoder;->decodeCBC256PKCS7Padding([BLjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static decodeCBC256PKCS7Padding([BLjava/lang/String;)[B
    .locals 1

    const/4 v0, 0x2

    invoke-static {v0, p0, p1}, Lorg/lasque/tusdk/core/utils/AESCoder;->a(I[BLjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static decodeCBC256PKCS7PaddingToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lorg/lasque/tusdk/core/utils/AESCoder;->decodeCBC256PKCS7Padding(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    return-object p1
.end method

.method public static decodeCBC256PKCS7PaddingToString([BLjava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lorg/lasque/tusdk/core/utils/AESCoder;->decodeCBC256PKCS7Padding([BLjava/lang/String;)[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    return-object p1
.end method

.method public static encodeCBC256PKCS7Padding(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "%s encodeCBC256PKCS7Padding: %s | %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "AESCoder"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p0, v3, v4

    const/4 p0, 0x2

    aput-object p1, v3, p0

    invoke-static {v1, v2, v3}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    invoke-static {v0, p1}, Lorg/lasque/tusdk/core/utils/AESCoder;->encodeCBC256PKCS7Padding([BLjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static encodeCBC256PKCS7Padding([BLjava/lang/String;)[B
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0, p0, p1}, Lorg/lasque/tusdk/core/utils/AESCoder;->a(I[BLjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static encodeCBC256PKCS7PaddingToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lorg/lasque/tusdk/core/utils/AESCoder;->encodeCBC256PKCS7Padding(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
