.class public final Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView$MultiWindow;
.super Ljava/lang/Object;
.source "MultiZoneAfView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MultiWindow"
.end annotation


# instance fields
.field public mBounds:Landroid/graphics/Rect;

.field public mResult:I


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView$MultiWindow;->mBounds:Landroid/graphics/Rect;

    iput p2, p0, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView$MultiWindow;->mResult:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "{ bounds: %s, result: %s}"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView$MultiWindow;->mBounds:Landroid/graphics/Rect;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView$MultiWindow;->mResult:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
