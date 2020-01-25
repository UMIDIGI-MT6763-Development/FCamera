.class public final enum Lcom/mediatek/plugin/element/ParameterDef$ParameterType;
.super Ljava/lang/Enum;
.source "ParameterDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/plugin/element/ParameterDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ParameterType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mediatek/plugin/element/ParameterDef$ParameterType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mediatek/plugin/element/ParameterDef$ParameterType;

.field public static final enum BOOLEAN:Lcom/mediatek/plugin/element/ParameterDef$ParameterType;

.field public static final enum DOUBLE:Lcom/mediatek/plugin/element/ParameterDef$ParameterType;

.field public static final enum FLOAT:Lcom/mediatek/plugin/element/ParameterDef$ParameterType;

.field public static final enum INT:Lcom/mediatek/plugin/element/ParameterDef$ParameterType;

.field public static final enum LONG:Lcom/mediatek/plugin/element/ParameterDef$ParameterType;

.field public static final enum STRING:Lcom/mediatek/plugin/element/ParameterDef$ParameterType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/mediatek/plugin/element/ParameterDef$ParameterType;

    const-string v1, "STRING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mediatek/plugin/element/ParameterDef$ParameterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/plugin/element/ParameterDef$ParameterType;->STRING:Lcom/mediatek/plugin/element/ParameterDef$ParameterType;

    new-instance v0, Lcom/mediatek/plugin/element/ParameterDef$ParameterType;

    const-string v1, "INT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/mediatek/plugin/element/ParameterDef$ParameterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/plugin/element/ParameterDef$ParameterType;->INT:Lcom/mediatek/plugin/element/ParameterDef$ParameterType;

    new-instance v0, Lcom/mediatek/plugin/element/ParameterDef$ParameterType;

    const-string v1, "LONG"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/mediatek/plugin/element/ParameterDef$ParameterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/plugin/element/ParameterDef$ParameterType;->LONG:Lcom/mediatek/plugin/element/ParameterDef$ParameterType;

    new-instance v0, Lcom/mediatek/plugin/element/ParameterDef$ParameterType;

    const-string v1, "FLOAT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/mediatek/plugin/element/ParameterDef$ParameterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/plugin/element/ParameterDef$ParameterType;->FLOAT:Lcom/mediatek/plugin/element/ParameterDef$ParameterType;

    new-instance v0, Lcom/mediatek/plugin/element/ParameterDef$ParameterType;

    const-string v1, "DOUBLE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/mediatek/plugin/element/ParameterDef$ParameterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/plugin/element/ParameterDef$ParameterType;->DOUBLE:Lcom/mediatek/plugin/element/ParameterDef$ParameterType;

    new-instance v0, Lcom/mediatek/plugin/element/ParameterDef$ParameterType;

    const-string v1, "BOOLEAN"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/mediatek/plugin/element/ParameterDef$ParameterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/plugin/element/ParameterDef$ParameterType;->BOOLEAN:Lcom/mediatek/plugin/element/ParameterDef$ParameterType;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/mediatek/plugin/element/ParameterDef$ParameterType;

    sget-object v1, Lcom/mediatek/plugin/element/ParameterDef$ParameterType;->STRING:Lcom/mediatek/plugin/element/ParameterDef$ParameterType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mediatek/plugin/element/ParameterDef$ParameterType;->INT:Lcom/mediatek/plugin/element/ParameterDef$ParameterType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mediatek/plugin/element/ParameterDef$ParameterType;->LONG:Lcom/mediatek/plugin/element/ParameterDef$ParameterType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mediatek/plugin/element/ParameterDef$ParameterType;->FLOAT:Lcom/mediatek/plugin/element/ParameterDef$ParameterType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mediatek/plugin/element/ParameterDef$ParameterType;->DOUBLE:Lcom/mediatek/plugin/element/ParameterDef$ParameterType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/mediatek/plugin/element/ParameterDef$ParameterType;->BOOLEAN:Lcom/mediatek/plugin/element/ParameterDef$ParameterType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/mediatek/plugin/element/ParameterDef$ParameterType;->$VALUES:[Lcom/mediatek/plugin/element/ParameterDef$ParameterType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/mediatek/plugin/element/ParameterDef$ParameterType;
    .locals 1

    const-class v0, Lcom/mediatek/plugin/element/ParameterDef$ParameterType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mediatek/plugin/element/ParameterDef$ParameterType;

    return-object p0
.end method

.method public static values()[Lcom/mediatek/plugin/element/ParameterDef$ParameterType;
    .locals 1

    sget-object v0, Lcom/mediatek/plugin/element/ParameterDef$ParameterType;->$VALUES:[Lcom/mediatek/plugin/element/ParameterDef$ParameterType;

    invoke-virtual {v0}, [Lcom/mediatek/plugin/element/ParameterDef$ParameterType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/plugin/element/ParameterDef$ParameterType;

    return-object v0
.end method
