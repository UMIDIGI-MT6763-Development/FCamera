.class public Lcom/baidu/aip/util/AipClientConst;
.super Ljava/lang/Object;
.source "AipClientConst.java"


# static fields
.field public static final AI_ACCESS_RIGHT:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final BCE_AUTH_EXPIRE_IN_SECONDS:Ljava/lang/Integer;

.field public static final BCE_HEADER_TO_SIGN:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final BCE_PREFIX:Ljava/lang/String; = "x-bce-"

.field public static final DEFAULT_ENCODING:Ljava/lang/String; = "UTF8"

.field public static final ENCODING_GBK:Ljava/lang/String; = "GBK"

.field public static final IAM_ERROR_CODE:Ljava/lang/Integer;

.field public static final LOG4J_CONF_PROPERTY:Ljava/lang/String; = "aip.log4j.conf"

.field public static final OAUTH_URL:Ljava/lang/String; = "https://aip.baidubce.com/oauth/2.0/token"

.field public static final OPENAPI_NO_ACCESS_ERROR_CODE:Ljava/lang/Integer;

.field public static final OPENAPI_NO_ACCESS_ERROR_MSG:Ljava/lang/String; = "No permission to access data"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x708

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/baidu/aip/util/AipClientConst;->BCE_AUTH_EXPIRE_IN_SECONDS:Ljava/lang/Integer;

    new-instance v0, Ljava/util/HashSet;

    const-string v1, "host"

    const-string v2, "content-md5"

    const-string v3, "content-length"

    const-string v4, "content-type"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/baidu/aip/util/AipClientConst;->BCE_HEADER_TO_SIGN:Ljava/util/HashSet;

    const-string v0, "audio_voice_assistant_get"

    const-string v1, "audio_tts_post"

    const-string v2, "brain_all_scope"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/baidu/aip/util/AipClientConst;->AI_ACCESS_RIGHT:Ljava/util/List;

    const/16 v0, 0xe

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/baidu/aip/util/AipClientConst;->IAM_ERROR_CODE:Ljava/lang/Integer;

    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/baidu/aip/util/AipClientConst;->OPENAPI_NO_ACCESS_ERROR_CODE:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
