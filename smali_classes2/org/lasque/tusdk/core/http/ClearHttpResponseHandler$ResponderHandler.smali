.class Lorg/lasque/tusdk/core/http/ClearHttpResponseHandler$ResponderHandler;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/http/ClearHttpResponseHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResponderHandler"
.end annotation


# instance fields
.field private final a:Lorg/lasque/tusdk/core/http/ClearHttpResponseHandler;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/http/ClearHttpResponseHandler;Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lorg/lasque/tusdk/core/http/ClearHttpResponseHandler$ResponderHandler;->a:Lorg/lasque/tusdk/core/http/ClearHttpResponseHandler;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/ClearHttpResponseHandler$ResponderHandler;->a:Lorg/lasque/tusdk/core/http/ClearHttpResponseHandler;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/http/ClearHttpResponseHandler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
