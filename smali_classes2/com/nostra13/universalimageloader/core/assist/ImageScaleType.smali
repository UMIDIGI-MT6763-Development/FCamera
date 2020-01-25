.class public final enum Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
.super Ljava/lang/Enum;
.source "ImageScaleType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

.field public static final enum EXACTLY:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

.field public static final enum EXACTLY_STRETCHED:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

.field public static final enum IN_SAMPLE_INT:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

.field public static final enum IN_SAMPLE_POWER_OF_2:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

.field public static final enum NONE:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

.field public static final enum NONE_SAFE:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->NONE:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    new-instance v0, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    const-string v1, "NONE_SAFE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->NONE_SAFE:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    new-instance v0, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    const-string v1, "IN_SAMPLE_POWER_OF_2"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->IN_SAMPLE_POWER_OF_2:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    new-instance v0, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    const-string v1, "IN_SAMPLE_INT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->IN_SAMPLE_INT:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    new-instance v0, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    const-string v1, "EXACTLY"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    new-instance v0, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    const-string v1, "EXACTLY_STRETCHED"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY_STRETCHED:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->NONE:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->NONE_SAFE:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->IN_SAMPLE_POWER_OF_2:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->IN_SAMPLE_INT:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY_STRETCHED:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->ENUM$VALUES:[Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
    .locals 1

    const-class v0, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    return-object p0
.end method

.method public static values()[Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
    .locals 4

    sget-object v0, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->ENUM$VALUES:[Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    array-length v1, v0

    new-array v2, v1, [Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
