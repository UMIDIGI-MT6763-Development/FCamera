.class public final enum Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;
.super Ljava/lang/Enum;
.source "QueueProcessingType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

.field public static final enum FIFO:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

.field public static final enum LIFO:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    const-string v1, "FIFO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;->FIFO:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    new-instance v0, Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    const-string v1, "LIFO"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;->LIFO:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;->FIFO:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;->LIFO:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;->ENUM$VALUES:[Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;
    .locals 1

    const-class v0, Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    return-object p0
.end method

.method public static values()[Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;
    .locals 4

    sget-object v0, Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;->ENUM$VALUES:[Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    array-length v1, v0

    new-array v2, v1, [Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method