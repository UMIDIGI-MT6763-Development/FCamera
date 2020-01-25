.class public final enum Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;
.super Ljava/lang/Enum;
.source "VideoMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/mode/video/VideoMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "VideoState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;

.field public static final enum STATE_PAUSED:Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;

.field public static final enum STATE_PREVIEW:Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;

.field public static final enum STATE_PRE_RECORDING:Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;

.field public static final enum STATE_PRE_SAVING:Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;

.field public static final enum STATE_RECORDING:Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;

.field public static final enum STATE_REVIEW_UI:Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;

.field public static final enum STATE_SAVING:Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;

.field public static final enum STATE_UNKNOWN:Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;

    const-string v1, "STATE_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;->STATE_UNKNOWN:Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;

    new-instance v0, Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;

    const-string v1, "STATE_PREVIEW"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;->STATE_PREVIEW:Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;

    new-instance v0, Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;

    const-string v1, "STATE_PRE_RECORDING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;->STATE_PRE_RECORDING:Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;

    new-instance v0, Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;

    const-string v1, "STATE_RECORDING"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;->STATE_RECORDING:Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;

    new-instance v0, Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;

    const-string v1, "STATE_PAUSED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;->STATE_PAUSED:Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;

    new-instance v0, Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;

    const-string v1, "STATE_PRE_SAVING"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;->STATE_PRE_SAVING:Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;

    new-instance v0, Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;

    const-string v1, "STATE_SAVING"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;->STATE_SAVING:Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;

    new-instance v0, Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;

    const-string v1, "STATE_REVIEW_UI"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;->STATE_REVIEW_UI:Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;

    sget-object v1, Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;->STATE_UNKNOWN:Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;->STATE_PREVIEW:Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;->STATE_PRE_RECORDING:Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;->STATE_RECORDING:Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;->STATE_PAUSED:Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;->STATE_PRE_SAVING:Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;->STATE_SAVING:Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;

    aput-object v1, v0, v8

    sget-object v1, Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;->STATE_REVIEW_UI:Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;

    aput-object v1, v0, v9

    sput-object v0, Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;->$VALUES:[Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;
    .locals 1

    const-class v0, Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;

    return-object p0
.end method

.method public static values()[Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;
    .locals 1

    sget-object v0, Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;->$VALUES:[Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;

    invoke-virtual {v0}, [Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;

    return-object v0
.end method
