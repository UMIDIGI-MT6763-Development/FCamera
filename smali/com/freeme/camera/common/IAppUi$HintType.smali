.class public final enum Lcom/freeme/camera/common/IAppUi$HintType;
.super Ljava/lang/Enum;
.source "IAppUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/IAppUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HintType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/freeme/camera/common/IAppUi$HintType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/freeme/camera/common/IAppUi$HintType;

.field public static final enum TYPE_ALWAYS_BOTTOM:Lcom/freeme/camera/common/IAppUi$HintType;

.field public static final enum TYPE_ALWAYS_TOP:Lcom/freeme/camera/common/IAppUi$HintType;

.field public static final enum TYPE_AUTO_HIDE:Lcom/freeme/camera/common/IAppUi$HintType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/freeme/camera/common/IAppUi$HintType;

    const-string v1, "TYPE_ALWAYS_TOP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/freeme/camera/common/IAppUi$HintType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freeme/camera/common/IAppUi$HintType;->TYPE_ALWAYS_TOP:Lcom/freeme/camera/common/IAppUi$HintType;

    new-instance v0, Lcom/freeme/camera/common/IAppUi$HintType;

    const-string v1, "TYPE_AUTO_HIDE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/freeme/camera/common/IAppUi$HintType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freeme/camera/common/IAppUi$HintType;->TYPE_AUTO_HIDE:Lcom/freeme/camera/common/IAppUi$HintType;

    new-instance v0, Lcom/freeme/camera/common/IAppUi$HintType;

    const-string v1, "TYPE_ALWAYS_BOTTOM"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/freeme/camera/common/IAppUi$HintType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freeme/camera/common/IAppUi$HintType;->TYPE_ALWAYS_BOTTOM:Lcom/freeme/camera/common/IAppUi$HintType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/freeme/camera/common/IAppUi$HintType;

    sget-object v1, Lcom/freeme/camera/common/IAppUi$HintType;->TYPE_ALWAYS_TOP:Lcom/freeme/camera/common/IAppUi$HintType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/freeme/camera/common/IAppUi$HintType;->TYPE_AUTO_HIDE:Lcom/freeme/camera/common/IAppUi$HintType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/freeme/camera/common/IAppUi$HintType;->TYPE_ALWAYS_BOTTOM:Lcom/freeme/camera/common/IAppUi$HintType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/freeme/camera/common/IAppUi$HintType;->$VALUES:[Lcom/freeme/camera/common/IAppUi$HintType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/freeme/camera/common/IAppUi$HintType;
    .locals 1

    const-class v0, Lcom/freeme/camera/common/IAppUi$HintType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/freeme/camera/common/IAppUi$HintType;

    return-object p0
.end method

.method public static values()[Lcom/freeme/camera/common/IAppUi$HintType;
    .locals 1

    sget-object v0, Lcom/freeme/camera/common/IAppUi$HintType;->$VALUES:[Lcom/freeme/camera/common/IAppUi$HintType;

    invoke-virtual {v0}, [Lcom/freeme/camera/common/IAppUi$HintType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/freeme/camera/common/IAppUi$HintType;

    return-object v0
.end method
