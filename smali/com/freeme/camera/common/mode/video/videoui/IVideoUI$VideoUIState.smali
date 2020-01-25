.class public final enum Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;
.super Ljava/lang/Enum;
.source "IVideoUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/mode/video/videoui/IVideoUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VideoUIState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;

.field public static final enum STATE_PAUSE_RECORDING:Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;

.field public static final enum STATE_PREVIEW:Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;

.field public static final enum STATE_PRE_RECORDING:Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;

.field public static final enum STATE_RECORDING:Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;

.field public static final enum STATE_RESUME_RECORDING:Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;

    const-string v1, "STATE_PREVIEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;->STATE_PREVIEW:Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;

    new-instance v0, Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;

    const-string v1, "STATE_PRE_RECORDING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;->STATE_PRE_RECORDING:Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;

    new-instance v0, Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;

    const-string v1, "STATE_RECORDING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;->STATE_RECORDING:Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;

    new-instance v0, Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;

    const-string v1, "STATE_PAUSE_RECORDING"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;->STATE_PAUSE_RECORDING:Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;

    new-instance v0, Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;

    const-string v1, "STATE_RESUME_RECORDING"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;->STATE_RESUME_RECORDING:Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;

    sget-object v1, Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;->STATE_PREVIEW:Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;->STATE_PRE_RECORDING:Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;->STATE_RECORDING:Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;->STATE_PAUSE_RECORDING:Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;->STATE_RESUME_RECORDING:Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;->$VALUES:[Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;
    .locals 1

    const-class v0, Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;

    return-object p0
.end method

.method public static values()[Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;
    .locals 1

    sget-object v0, Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;->$VALUES:[Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;

    invoke-virtual {v0}, [Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;

    return-object v0
.end method
