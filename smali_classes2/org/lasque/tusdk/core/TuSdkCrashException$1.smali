.class Lorg/lasque/tusdk/core/TuSdkCrashException$1;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/TuSdkCrashException;->a(Ljava/lang/Throwable;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/TuSdkCrashException;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/TuSdkCrashException;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/TuSdkCrashException$1;->a:Lorg/lasque/tusdk/core/TuSdkCrashException;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/TuSdkCrashException$1;->a:Lorg/lasque/tusdk/core/TuSdkCrashException;

    invoke-static {v0}, Lorg/lasque/tusdk/core/TuSdkCrashException;->a(Lorg/lasque/tusdk/core/TuSdkCrashException;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u5e94\u7528\u7a0b\u5e8f\u53d1\u751f\u9519\u8bef\uff0c \u5373\u5c06\u9000\u51fa"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
