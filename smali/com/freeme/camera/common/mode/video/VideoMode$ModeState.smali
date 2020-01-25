.class public final enum Lcom/freeme/camera/common/mode/video/VideoMode$ModeState;
.super Ljava/lang/Enum;
.source "VideoMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/mode/video/VideoMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "ModeState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/freeme/camera/common/mode/video/VideoMode$ModeState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/freeme/camera/common/mode/video/VideoMode$ModeState;

.field public static final enum STATE_PAUSED:Lcom/freeme/camera/common/mode/video/VideoMode$ModeState;

.field public static final enum STATE_RESUMED:Lcom/freeme/camera/common/mode/video/VideoMode$ModeState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/freeme/camera/common/mode/video/VideoMode$ModeState;

    const-string v1, "STATE_RESUMED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/freeme/camera/common/mode/video/VideoMode$ModeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freeme/camera/common/mode/video/VideoMode$ModeState;->STATE_RESUMED:Lcom/freeme/camera/common/mode/video/VideoMode$ModeState;

    new-instance v0, Lcom/freeme/camera/common/mode/video/VideoMode$ModeState;

    const-string v1, "STATE_PAUSED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/freeme/camera/common/mode/video/VideoMode$ModeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freeme/camera/common/mode/video/VideoMode$ModeState;->STATE_PAUSED:Lcom/freeme/camera/common/mode/video/VideoMode$ModeState;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/freeme/camera/common/mode/video/VideoMode$ModeState;

    sget-object v1, Lcom/freeme/camera/common/mode/video/VideoMode$ModeState;->STATE_RESUMED:Lcom/freeme/camera/common/mode/video/VideoMode$ModeState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/freeme/camera/common/mode/video/VideoMode$ModeState;->STATE_PAUSED:Lcom/freeme/camera/common/mode/video/VideoMode$ModeState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/freeme/camera/common/mode/video/VideoMode$ModeState;->$VALUES:[Lcom/freeme/camera/common/mode/video/VideoMode$ModeState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/freeme/camera/common/mode/video/VideoMode$ModeState;
    .locals 1

    const-class v0, Lcom/freeme/camera/common/mode/video/VideoMode$ModeState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/freeme/camera/common/mode/video/VideoMode$ModeState;

    return-object p0
.end method

.method public static values()[Lcom/freeme/camera/common/mode/video/VideoMode$ModeState;
    .locals 1

    sget-object v0, Lcom/freeme/camera/common/mode/video/VideoMode$ModeState;->$VALUES:[Lcom/freeme/camera/common/mode/video/VideoMode$ModeState;

    invoke-virtual {v0}, [Lcom/freeme/camera/common/mode/video/VideoMode$ModeState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/freeme/camera/common/mode/video/VideoMode$ModeState;

    return-object v0
.end method
