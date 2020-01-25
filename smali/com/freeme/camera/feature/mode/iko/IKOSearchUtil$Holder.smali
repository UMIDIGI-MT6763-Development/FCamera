.class Lcom/freeme/camera/feature/mode/iko/IKOSearchUtil$Holder;
.super Ljava/lang/Object;
.source "IKOSearchUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/mode/iko/IKOSearchUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/freeme/camera/feature/mode/iko/IKOSearchUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/freeme/camera/feature/mode/iko/IKOSearchUtil;

    invoke-direct {v0}, Lcom/freeme/camera/feature/mode/iko/IKOSearchUtil;-><init>()V

    sput-object v0, Lcom/freeme/camera/feature/mode/iko/IKOSearchUtil$Holder;->INSTANCE:Lcom/freeme/camera/feature/mode/iko/IKOSearchUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/freeme/camera/feature/mode/iko/IKOSearchUtil;
    .locals 1

    sget-object v0, Lcom/freeme/camera/feature/mode/iko/IKOSearchUtil$Holder;->INSTANCE:Lcom/freeme/camera/feature/mode/iko/IKOSearchUtil;

    return-object v0
.end method
