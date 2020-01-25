.class public final enum Lcom/freeme/camera/feature/setting/focus/IFocus$AfModeState;
.super Ljava/lang/Enum;
.source "IFocus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/setting/focus/IFocus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AfModeState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/freeme/camera/feature/setting/focus/IFocus$AfModeState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/freeme/camera/feature/setting/focus/IFocus$AfModeState;

.field public static final enum STATE_INVALID:Lcom/freeme/camera/feature/setting/focus/IFocus$AfModeState;

.field public static final enum STATE_MULTI:Lcom/freeme/camera/feature/setting/focus/IFocus$AfModeState;

.field public static final enum STATE_SINGLE:Lcom/freeme/camera/feature/setting/focus/IFocus$AfModeState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/freeme/camera/feature/setting/focus/IFocus$AfModeState;

    const-string v1, "STATE_INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/freeme/camera/feature/setting/focus/IFocus$AfModeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freeme/camera/feature/setting/focus/IFocus$AfModeState;->STATE_INVALID:Lcom/freeme/camera/feature/setting/focus/IFocus$AfModeState;

    new-instance v0, Lcom/freeme/camera/feature/setting/focus/IFocus$AfModeState;

    const-string v1, "STATE_SINGLE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/freeme/camera/feature/setting/focus/IFocus$AfModeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freeme/camera/feature/setting/focus/IFocus$AfModeState;->STATE_SINGLE:Lcom/freeme/camera/feature/setting/focus/IFocus$AfModeState;

    new-instance v0, Lcom/freeme/camera/feature/setting/focus/IFocus$AfModeState;

    const-string v1, "STATE_MULTI"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/freeme/camera/feature/setting/focus/IFocus$AfModeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freeme/camera/feature/setting/focus/IFocus$AfModeState;->STATE_MULTI:Lcom/freeme/camera/feature/setting/focus/IFocus$AfModeState;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/freeme/camera/feature/setting/focus/IFocus$AfModeState;

    sget-object v1, Lcom/freeme/camera/feature/setting/focus/IFocus$AfModeState;->STATE_INVALID:Lcom/freeme/camera/feature/setting/focus/IFocus$AfModeState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/freeme/camera/feature/setting/focus/IFocus$AfModeState;->STATE_SINGLE:Lcom/freeme/camera/feature/setting/focus/IFocus$AfModeState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/freeme/camera/feature/setting/focus/IFocus$AfModeState;->STATE_MULTI:Lcom/freeme/camera/feature/setting/focus/IFocus$AfModeState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/freeme/camera/feature/setting/focus/IFocus$AfModeState;->$VALUES:[Lcom/freeme/camera/feature/setting/focus/IFocus$AfModeState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/freeme/camera/feature/setting/focus/IFocus$AfModeState;
    .locals 1

    const-class v0, Lcom/freeme/camera/feature/setting/focus/IFocus$AfModeState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/freeme/camera/feature/setting/focus/IFocus$AfModeState;

    return-object p0
.end method

.method public static values()[Lcom/freeme/camera/feature/setting/focus/IFocus$AfModeState;
    .locals 1

    sget-object v0, Lcom/freeme/camera/feature/setting/focus/IFocus$AfModeState;->$VALUES:[Lcom/freeme/camera/feature/setting/focus/IFocus$AfModeState;

    invoke-virtual {v0}, [Lcom/freeme/camera/feature/setting/focus/IFocus$AfModeState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/freeme/camera/feature/setting/focus/IFocus$AfModeState;

    return-object v0
.end method
