.class Lcom/actionbarsherlock/view/MenuInflater$InflatedOnMenuItemClickListener;
.super Ljava/lang/Object;
.source "MenuInflater.java"

# interfaces
.implements Lcom/actionbarsherlock/view/MenuItem$OnMenuItemClickListener;


# static fields
.field private static final PARAM_TYPES:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 193
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/actionbarsherlock/view/MenuItem;

    aput-object v2, v0, v1

    sput-object v0, Lcom/actionbarsherlock/view/MenuInflater$InflatedOnMenuItemClickListener;->PARAM_TYPES:[Ljava/lang/Class;

    .line 191
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    iput-object p1, p0, Lcom/actionbarsherlock/view/MenuInflater$InflatedOnMenuItemClickListener;->mContext:Landroid/content/Context;

    .line 200
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 202
    :try_start_9
    sget-object v0, Lcom/actionbarsherlock/view/MenuInflater$InflatedOnMenuItemClickListener;->PARAM_TYPES:[Ljava/lang/Class;

    invoke-virtual {v1, p2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/actionbarsherlock/view/MenuInflater$InflatedOnMenuItemClickListener;->mMethod:Ljava/lang/reflect/Method;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_11} :catch_12

    return-void

    .line 203
    :catch_12
    move-exception v0

    .line 204
    new-instance v2, Landroid/view/InflateException;

    .line 205
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Couldn\'t resolve menu item onClick handler "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 206
    const-string v4, " in class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 205
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 204
    invoke-direct {v2, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 207
    invoke-virtual {v2, v0}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 208
    throw v2
.end method


# virtual methods
.method public onMenuItemClick(Lcom/actionbarsherlock/view/MenuItem;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 214
    :try_start_1
    iget-object v1, p0, Lcom/actionbarsherlock/view/MenuInflater$InflatedOnMenuItemClickListener;->mMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_20

    .line 215
    iget-object v0, p0, Lcom/actionbarsherlock/view/MenuInflater$InflatedOnMenuItemClickListener;->mMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/actionbarsherlock/view/MenuInflater$InflatedOnMenuItemClickListener;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 218
    :goto_1f
    return v0

    .line 217
    :cond_20
    iget-object v1, p0, Lcom/actionbarsherlock/view/MenuInflater$InflatedOnMenuItemClickListener;->mMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/actionbarsherlock/view/MenuInflater$InflatedOnMenuItemClickListener;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2d} :catch_2e

    goto :goto_1f

    .line 220
    :catch_2e
    move-exception v0

    .line 221
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
