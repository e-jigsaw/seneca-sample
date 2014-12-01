seneca-sample
=============

seneca sample

```
✈ tree -L 2 .
.
├── server-client
│   ├── client.coffee
│   ├── node_modules
│   ├── package.json
│   └── server.coffee
└── standalones
    ├── node_modules
    ├── package.json
    ├── sample1.coffee
    ├── sample2.coffee
    └── sample3.coffee
```

# standalones

```
% cd standalones
% npm install
% coffee sample1.coffee
```

# server-client

```
% cd server-client
% npm install
% coffee server.coffee
% coffee client.coffee # another shell
```

# License

MIT
