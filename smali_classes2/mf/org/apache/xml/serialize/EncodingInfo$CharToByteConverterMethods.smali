.class Lmf/org/apache/xml/serialize/EncodingInfo$CharToByteConverterMethods;
.super Ljava/lang/Object;
.source "EncodingInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xml/serialize/EncodingInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CharToByteConverterMethods"
.end annotation


# static fields
.field private static fgCanConvertMethod:Ljava/lang/reflect/Method; = null

.field private static fgConvertersAvailable:Z = false

.field private static fgGetConverterMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "sun.io.CharToByteConverter"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getConverter"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v0

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lmf/org/apache/xml/serialize/EncodingInfo$CharToByteConverterMethods;->fgGetConverterMethod:Ljava/lang/reflect/Method;

    const-string v2, "canConvert"

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lmf/org/apache/xml/serialize/EncodingInfo$CharToByteConverterMethods;->fgCanConvertMethod:Ljava/lang/reflect/Method;

    sput-boolean v3, Lmf/org/apache/xml/serialize/EncodingInfo$CharToByteConverterMethods;->fgConvertersAvailable:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    sput-object v1, Lmf/org/apache/xml/serialize/EncodingInfo$CharToByteConverterMethods;->fgGetConverterMethod:Ljava/lang/reflect/Method;

    sput-object v1, Lmf/org/apache/xml/serialize/EncodingInfo$CharToByteConverterMethods;->fgCanConvertMethod:Ljava/lang/reflect/Method;

    sput-boolean v0, Lmf/org/apache/xml/serialize/EncodingInfo$CharToByteConverterMethods;->fgConvertersAvailable:Z

    :goto_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Z
    .locals 1

    sget-boolean v0, Lmf/org/apache/xml/serialize/EncodingInfo$CharToByteConverterMethods;->fgConvertersAvailable:Z

    return v0
.end method

.method static synthetic access$1()Ljava/lang/reflect/Method;
    .locals 1

    sget-object v0, Lmf/org/apache/xml/serialize/EncodingInfo$CharToByteConverterMethods;->fgGetConverterMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$2()Ljava/lang/reflect/Method;
    .locals 1

    sget-object v0, Lmf/org/apache/xml/serialize/EncodingInfo$CharToByteConverterMethods;->fgCanConvertMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method
