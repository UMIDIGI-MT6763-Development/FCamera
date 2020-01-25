.class public final enum Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;
.super Ljava/lang/Enum;
.source "IFocusController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/setting/focus/IFocusController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AutoFocusState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;

.field public static final enum ACTIVE_FOCUSED:Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;

.field public static final enum ACTIVE_SCAN:Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;

.field public static final enum ACTIVE_UNFOCUSED:Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;

.field public static final enum INACTIVE:Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;

.field public static final enum PASSIVE_FOCUSED:Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;

.field public static final enum PASSIVE_SCAN:Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;

.field public static final enum PASSIVE_UNFOCUSED:Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;

    const-string v1, "INACTIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;->INACTIVE:Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;

    new-instance v0, Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;

    const-string v1, "ACTIVE_SCAN"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;->ACTIVE_SCAN:Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;

    new-instance v0, Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;

    const-string v1, "ACTIVE_FOCUSED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;->ACTIVE_FOCUSED:Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;

    new-instance v0, Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;

    const-string v1, "ACTIVE_UNFOCUSED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;->ACTIVE_UNFOCUSED:Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;

    new-instance v0, Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;

    const-string v1, "PASSIVE_SCAN"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;->PASSIVE_SCAN:Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;

    new-instance v0, Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;

    const-string v1, "PASSIVE_FOCUSED"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;->PASSIVE_FOCUSED:Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;

    new-instance v0, Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;

    const-string v1, "PASSIVE_UNFOCUSED"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;->PASSIVE_UNFOCUSED:Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;

    sget-object v1, Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;->INACTIVE:Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;->ACTIVE_SCAN:Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;->ACTIVE_FOCUSED:Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;->ACTIVE_UNFOCUSED:Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;->PASSIVE_SCAN:Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;->PASSIVE_FOCUSED:Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;->PASSIVE_UNFOCUSED:Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;

    aput-object v1, v0, v8

    sput-object v0, Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;->$VALUES:[Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;
    .locals 1

    const-class v0, Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;

    return-object p0
.end method

.method public static values()[Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;
    .locals 1

    sget-object v0, Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;->$VALUES:[Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;

    invoke-virtual {v0}, [Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;

    return-object v0
.end method
