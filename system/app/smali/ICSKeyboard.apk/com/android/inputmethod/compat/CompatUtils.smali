.class public Lcom/android/inputmethod/compat/CompatUtils;
.super Ljava/lang/Object;
.source "CompatUtils.java"


# static fields
.field private static final EXTRA_INPUT_METHOD_ID:Ljava/lang/String; = "input_method_id"

.field private static final INPUT_LANGUAGE_SELECTION:Ljava/lang/String; = "com.android.inputmethod.latin.INPUT_LANGUAGE_SELECTION_ICS"

.field private static final INPUT_METHOD_SUBTYPE_SETTINGS:Ljava/lang/String; = "android.settings.INPUT_METHOD_SUBTYPE_SETTINGS"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    const-class v0, Lcom/android/inputmethod/compat/CompatUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/compat/CompatUtils;->TAG:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyInputMethodSubtypeListToWrapper(Ljava/lang/Object;)Ljava/util/List;
    .registers 5
    .parameter "listObject"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    instance-of v2, p0, Ljava/util/List;

    if-nez v2, :cond_6

    const/4 v1, 0x0

    .line 157
    .end local p0
    :cond_5
    return-object v1

    .line 153
    .restart local p0
    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .local v1, subtypes:Ljava/util/List;,"Ljava/util/List<Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;>;"
    check-cast p0, Ljava/util/List;

    .end local p0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 155
    .local v0, o:Ljava/lang/Object;
    new-instance v3, Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    invoke-direct {v3, v0}, Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11
.end method

.method public static getClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .parameter "className"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 66
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    .line 68
    :goto_4
    return-object v1

    .line 67
    :catch_5
    move-exception v0

    .line 68
    .local v0, e:Ljava/lang/ClassNotFoundException;
    const/4 v1, 0x0

    goto :goto_4
.end method

.method public static varargs getConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .registers 4
    .parameter
    .parameter "types"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    .prologue
    .local p0, targetClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 98
    if-eqz p0, :cond_5

    if-nez p1, :cond_6

    .line 106
    :cond_5
    :goto_5
    return-object v0

    .line 100
    :cond_6
    :try_start_6
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_9
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_9} :catch_b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_9} :catch_d

    move-result-object v0

    goto :goto_5

    .line 101
    :catch_b
    move-exception v1

    goto :goto_5

    .line 103
    :catch_d
    move-exception v1

    goto :goto_5
.end method

.method public static getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 4
    .parameter
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    .local p0, targetClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 86
    if-eqz p0, :cond_9

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 94
    :cond_9
    :goto_9
    return-object v0

    .line 88
    :cond_a
    :try_start_a
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_d
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_d} :catch_f
    .catch Ljava/lang/NoSuchFieldException; {:try_start_a .. :try_end_d} :catch_11

    move-result-object v0

    goto :goto_9

    .line 89
    :catch_f
    move-exception v1

    goto :goto_9

    .line 91
    :catch_11
    move-exception v1

    goto :goto_9
.end method

.method public static getFieldValue(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .registers 7
    .parameter "receiver"
    .parameter "defaultValue"
    .parameter "field"

    .prologue
    .line 131
    if-nez p2, :cond_3

    .line 137
    .end local p1
    :goto_2
    return-object p1

    .line 133
    .restart local p1
    :cond_3
    :try_start_3
    invoke-virtual {p2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_8

    move-result-object p1

    goto :goto_2

    .line 134
    :catch_8
    move-exception v0

    .line 135
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/android/inputmethod/compat/CompatUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception in getFieldValue: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static getInputLanguageSelectionIntent(Ljava/lang/String;I)Landroid/content/Intent;
    .registers 4
    .parameter "inputMethodId"
    .parameter "flagsForSubtypeSettings"

    .prologue
    .line 55
    const-string v0, "com.android.inputmethod.latin.INPUT_LANGUAGE_SELECTION_ICS"

    .line 56
    .local v0, action:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 57
    .local v1, intent:Landroid/content/Intent;
    if-lez p1, :cond_c

    .line 58
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 61
    :cond_c
    return-object v1
.end method

.method public static varargs getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 5
    .parameter
    .parameter "name"
    .parameter "parameterTypes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .local p0, targetClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 74
    if-eqz p0, :cond_9

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 82
    :cond_9
    :goto_9
    return-object v0

    .line 76
    :cond_a
    :try_start_a
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_d
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_d} :catch_f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_a .. :try_end_d} :catch_11

    move-result-object v0

    goto :goto_9

    .line 77
    :catch_f
    move-exception v1

    goto :goto_9

    .line 79
    :catch_11
    move-exception v1

    goto :goto_9
.end method

.method public static varargs invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .parameter "receiver"
    .parameter "defaultValue"
    .parameter "method"
    .parameter "args"

    .prologue
    .line 121
    if-nez p2, :cond_3

    .line 127
    .end local p1
    :goto_2
    return-object p1

    .line 123
    .restart local p1
    :cond_3
    :try_start_3
    invoke-virtual {p2, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_8

    move-result-object p1

    goto :goto_2

    .line 124
    :catch_8
    move-exception v0

    .line 125
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/android/inputmethod/compat/CompatUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception in invoke: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static varargs newInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .parameter
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .local p0, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    const/4 v1, 0x0

    .line 110
    if-nez p0, :cond_4

    .line 116
    :goto_3
    return-object v1

    .line 112
    :cond_4
    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_9

    move-result-object v1

    goto :goto_3

    .line 113
    :catch_9
    move-exception v0

    .line 114
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Lcom/android/inputmethod/compat/CompatUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception in newInstance: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public static setFieldValue(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;)V
    .registers 7
    .parameter "receiver"
    .parameter "field"
    .parameter "value"

    .prologue
    .line 141
    if-nez p1, :cond_3

    .line 147
    :goto_2
    return-void

    .line 143
    :cond_3
    :try_start_3
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_7

    goto :goto_2

    .line 144
    :catch_7
    move-exception v0

    .line 145
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/android/inputmethod/compat/CompatUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception in setFieldValue: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
