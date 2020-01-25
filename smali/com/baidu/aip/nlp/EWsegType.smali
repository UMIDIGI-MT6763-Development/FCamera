.class public final enum Lcom/baidu/aip/nlp/EWsegType;
.super Ljava/lang/Enum;
.source "EWsegType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/aip/nlp/EWsegType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/baidu/aip/nlp/EWsegType;

.field public static final enum BASIC:Lcom/baidu/aip/nlp/EWsegType;

.field public static final enum WPCOMP:Lcom/baidu/aip/nlp/EWsegType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/baidu/aip/nlp/EWsegType;

    const-string v1, "BASIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/baidu/aip/nlp/EWsegType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/aip/nlp/EWsegType;->BASIC:Lcom/baidu/aip/nlp/EWsegType;

    new-instance v0, Lcom/baidu/aip/nlp/EWsegType;

    const-string v1, "WPCOMP"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/baidu/aip/nlp/EWsegType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/aip/nlp/EWsegType;->WPCOMP:Lcom/baidu/aip/nlp/EWsegType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/baidu/aip/nlp/EWsegType;

    sget-object v1, Lcom/baidu/aip/nlp/EWsegType;->BASIC:Lcom/baidu/aip/nlp/EWsegType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/aip/nlp/EWsegType;->WPCOMP:Lcom/baidu/aip/nlp/EWsegType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/baidu/aip/nlp/EWsegType;->$VALUES:[Lcom/baidu/aip/nlp/EWsegType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/aip/nlp/EWsegType;
    .locals 1

    const-class v0, Lcom/baidu/aip/nlp/EWsegType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/baidu/aip/nlp/EWsegType;

    return-object p0
.end method

.method public static values()[Lcom/baidu/aip/nlp/EWsegType;
    .locals 1

    sget-object v0, Lcom/baidu/aip/nlp/EWsegType;->$VALUES:[Lcom/baidu/aip/nlp/EWsegType;

    invoke-virtual {v0}, [Lcom/baidu/aip/nlp/EWsegType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/aip/nlp/EWsegType;

    return-object v0
.end method
