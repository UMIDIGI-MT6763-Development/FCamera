.class public final enum Lcom/baidu/aip/http/EBodyFormat;
.super Ljava/lang/Enum;
.source "EBodyFormat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/aip/http/EBodyFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/baidu/aip/http/EBodyFormat;

.field public static final enum FORM_KV:Lcom/baidu/aip/http/EBodyFormat;

.field public static final enum RAW_JSON:Lcom/baidu/aip/http/EBodyFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/baidu/aip/http/EBodyFormat;

    const-string v1, "FORM_KV"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/baidu/aip/http/EBodyFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/aip/http/EBodyFormat;->FORM_KV:Lcom/baidu/aip/http/EBodyFormat;

    new-instance v0, Lcom/baidu/aip/http/EBodyFormat;

    const-string v1, "RAW_JSON"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/baidu/aip/http/EBodyFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/aip/http/EBodyFormat;->RAW_JSON:Lcom/baidu/aip/http/EBodyFormat;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/baidu/aip/http/EBodyFormat;

    sget-object v1, Lcom/baidu/aip/http/EBodyFormat;->FORM_KV:Lcom/baidu/aip/http/EBodyFormat;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/aip/http/EBodyFormat;->RAW_JSON:Lcom/baidu/aip/http/EBodyFormat;

    aput-object v1, v0, v3

    sput-object v0, Lcom/baidu/aip/http/EBodyFormat;->$VALUES:[Lcom/baidu/aip/http/EBodyFormat;

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

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/aip/http/EBodyFormat;
    .locals 1

    const-class v0, Lcom/baidu/aip/http/EBodyFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/baidu/aip/http/EBodyFormat;

    return-object p0
.end method

.method public static values()[Lcom/baidu/aip/http/EBodyFormat;
    .locals 1

    sget-object v0, Lcom/baidu/aip/http/EBodyFormat;->$VALUES:[Lcom/baidu/aip/http/EBodyFormat;

    invoke-virtual {v0}, [Lcom/baidu/aip/http/EBodyFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/aip/http/EBodyFormat;

    return-object v0
.end method
