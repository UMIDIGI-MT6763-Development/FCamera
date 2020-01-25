.class Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer$1;->a:Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer$1;->a:Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->a(Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer$1;->a:Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->b(Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;)Ljava/lang/Runnable;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer$1;->a:Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->getMultipleStablizationDistance()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method
