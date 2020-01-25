.class public final enum Lcom/baidu/aip/client/EAuthState;
.super Ljava/lang/Enum;
.source "EAuthState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/aip/client/EAuthState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/baidu/aip/client/EAuthState;

.field public static final enum STATE_AIP_AUTH_OK:Lcom/baidu/aip/client/EAuthState;

.field public static final enum STATE_POSSIBLE_CLOUD_USER:Lcom/baidu/aip/client/EAuthState;

.field public static final enum STATE_TRUE_AIP_USER:Lcom/baidu/aip/client/EAuthState;

.field public static final enum STATE_TRUE_CLOUD_USER:Lcom/baidu/aip/client/EAuthState;

.field public static final enum STATE_UNKNOWN:Lcom/baidu/aip/client/EAuthState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/baidu/aip/client/EAuthState;

    const-string v1, "STATE_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/baidu/aip/client/EAuthState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/aip/client/EAuthState;->STATE_UNKNOWN:Lcom/baidu/aip/client/EAuthState;

    new-instance v0, Lcom/baidu/aip/client/EAuthState;

    const-string v1, "STATE_AIP_AUTH_OK"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/baidu/aip/client/EAuthState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/aip/client/EAuthState;->STATE_AIP_AUTH_OK:Lcom/baidu/aip/client/EAuthState;

    new-instance v0, Lcom/baidu/aip/client/EAuthState;

    const-string v1, "STATE_TRUE_AIP_USER"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/baidu/aip/client/EAuthState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/aip/client/EAuthState;->STATE_TRUE_AIP_USER:Lcom/baidu/aip/client/EAuthState;

    new-instance v0, Lcom/baidu/aip/client/EAuthState;

    const-string v1, "STATE_POSSIBLE_CLOUD_USER"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/baidu/aip/client/EAuthState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/aip/client/EAuthState;->STATE_POSSIBLE_CLOUD_USER:Lcom/baidu/aip/client/EAuthState;

    new-instance v0, Lcom/baidu/aip/client/EAuthState;

    const-string v1, "STATE_TRUE_CLOUD_USER"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/baidu/aip/client/EAuthState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/aip/client/EAuthState;->STATE_TRUE_CLOUD_USER:Lcom/baidu/aip/client/EAuthState;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/baidu/aip/client/EAuthState;

    sget-object v1, Lcom/baidu/aip/client/EAuthState;->STATE_UNKNOWN:Lcom/baidu/aip/client/EAuthState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/aip/client/EAuthState;->STATE_AIP_AUTH_OK:Lcom/baidu/aip/client/EAuthState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/aip/client/EAuthState;->STATE_TRUE_AIP_USER:Lcom/baidu/aip/client/EAuthState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/baidu/aip/client/EAuthState;->STATE_POSSIBLE_CLOUD_USER:Lcom/baidu/aip/client/EAuthState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/baidu/aip/client/EAuthState;->STATE_TRUE_CLOUD_USER:Lcom/baidu/aip/client/EAuthState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/baidu/aip/client/EAuthState;->$VALUES:[Lcom/baidu/aip/client/EAuthState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/aip/client/EAuthState;
    .locals 1

    const-class v0, Lcom/baidu/aip/client/EAuthState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/baidu/aip/client/EAuthState;

    return-object p0
.end method

.method public static values()[Lcom/baidu/aip/client/EAuthState;
    .locals 1

    sget-object v0, Lcom/baidu/aip/client/EAuthState;->$VALUES:[Lcom/baidu/aip/client/EAuthState;

    invoke-virtual {v0}, [Lcom/baidu/aip/client/EAuthState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/aip/client/EAuthState;

    return-object v0
.end method
