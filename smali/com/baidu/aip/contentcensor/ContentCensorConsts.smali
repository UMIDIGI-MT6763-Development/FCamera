.class public Lcom/baidu/aip/contentcensor/ContentCensorConsts;
.super Ljava/lang/Object;
.source "ContentCensorConsts.java"


# static fields
.field public static final ANTIPORN_MAX_IMAGE_SIDE_LENGTH:Ljava/lang/Integer;

.field public static final ANTIPORN_MAX_IMAGE_SIZE:Ljava/lang/Long;

.field public static final ANTIPORN_MIN_IMAGE_SIDE_LENGTH:Ljava/lang/Integer;

.field public static final ANTIPORN_SUPPORT_IMAGE_FORMAT:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final ANTI_PORN_GIF_URL:Ljava/lang/String; = "https://aip.baidubce.com/rest/2.0/antiporn/v1/detect_gif"

.field static final ANTI_PORN_URL:Ljava/lang/String; = "https://aip.baidubce.com/rest/2.0/antiporn/v1/detect"

.field static final ANTI_TERROR_URL:Ljava/lang/String; = "https://aip.baidubce.com/rest/2.0/antiterror/v1/detect"

.field static final FACE_AUDIT_URL:Ljava/lang/String; = "https://aip.baidubce.com/rest/2.0/solution/v1/face_audit"

.field static final IMAGE_CENSOR_COMB_URL:Ljava/lang/String; = "https://aip.baidubce.com/api/v1/solution/direct/img_censor"

.field static final REPORT_URL:Ljava/lang/String; = "https://aip.baidubce.com/rpc/2.0/feedback/v1/report"

.field static final TXT_CENSOR_URL:Ljava/lang/String; = "https://aip.baidubce.com/rest/2.0/antispam/v2/spam"

.field static final USER_DEFINED_URL:Ljava/lang/String; = "https://aip.baidubce.com/rest/2.0/solution/v1/img_censor/user_defined"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-wide/32 v0, 0x400000

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/baidu/aip/contentcensor/ContentCensorConsts;->ANTIPORN_MAX_IMAGE_SIZE:Ljava/lang/Long;

    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/baidu/aip/contentcensor/ContentCensorConsts;->ANTIPORN_MIN_IMAGE_SIDE_LENGTH:Ljava/lang/Integer;

    const/16 v0, 0x800

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/baidu/aip/contentcensor/ContentCensorConsts;->ANTIPORN_MAX_IMAGE_SIDE_LENGTH:Ljava/lang/Integer;

    new-instance v0, Ljava/util/HashSet;

    const-string v1, "JPEG"

    const-string v2, "png"

    const-string v3, "bmp"

    const-string v4, "gif"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/baidu/aip/contentcensor/ContentCensorConsts;->ANTIPORN_SUPPORT_IMAGE_FORMAT:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
